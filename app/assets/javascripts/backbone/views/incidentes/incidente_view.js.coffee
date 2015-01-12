Dashboard.Views.Incidentes ||= {}

class Dashboard.Views.Incidentes.IncidenteView extends Backbone.View
  template: JST["backbone/templates/incidentes/incidente"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    @$el.html(@template(@model.toJSON() ))
    return this
