Dashboard.Views.Incidentes ||= {}

class Dashboard.Views.Incidentes.NewView extends Backbone.View
  template: JST["backbone/templates/incidentes/new"]

  events:
    "submit #new-incidente": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (incidente) =>
        @model = incidente
        window.location.hash = "/#{@model.id}"

      error: (incidente, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    @$el.html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
