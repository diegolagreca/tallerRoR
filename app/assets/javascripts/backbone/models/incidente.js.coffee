class Dashboard.Models.Incidente extends Backbone.Model
  paramRoot: 'incidente'

  defaults:
    asunto: null
    descripcion: null
    responsable: null
    tipo: null
    prioridad: null

class Dashboard.Collections.IncidentesCollection extends Backbone.Collection
  model: Dashboard.Models.Incidente
  url: '/incidentes'
