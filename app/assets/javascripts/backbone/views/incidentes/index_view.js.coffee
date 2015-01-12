Dashboard.Views.Incidentes ||= {}

class Dashboard.Views.Incidentes.IndexView extends Backbone.View
  template: JST["backbone/templates/incidentes/index"]
	events:
		'submit #filter-form' : 'filter'
