class Dashboard.Routers.IncidentesRouter extends Backbone.Router
  initialize: (options) ->
    @incidentes = new Dashboard.Collections.IncidentesCollection()
    @incidentes.reset options.incidentes

  routes:
    "new"      : "newIncidente"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newIncidente: ->
    @view = new Dashboard.Views.Incidentes.NewView(collection: @incidentes)
    $("#incidentes").html(@view.render().el)

  index: ->
    @view = new Dashboard.Views.Incidentes.IndexView(incidentes: @incidentes)
    $("#incidentes").html(@view.render().el)

  show: (id) ->
    incidente = @incidentes.get(id)

    @view = new Dashboard.Views.Incidentes.ShowView(model: incidente)
    $("#incidentes").html(@view.render().el)

  edit: (id) ->
    incidente = @incidentes.get(id)

    @view = new Dashboard.Views.Incidentes.EditView(model: incidente)
    $("#incidentes").html(@view.render().el)
