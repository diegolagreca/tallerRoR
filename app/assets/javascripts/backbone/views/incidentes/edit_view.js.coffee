Dashboard.Views.Incidentes ||= {}

class Dashboard.Views.Incidentes.EditView extends Backbone.View
  template: JST["backbone/templates/incidentes/edit"]

  events:
    "submit #edit-incidente": "update"

  update: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success: (incidente) =>
        @model = incidente
        window.location.hash = "/#{@model.id}"
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
