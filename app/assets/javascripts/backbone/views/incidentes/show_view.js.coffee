Dashboard.Views.Incidentes ||= {}

class Dashboard.Views.Incidentes.ShowView extends Backbone.View
  template: JST["backbone/templates/incidentes/show"]

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
