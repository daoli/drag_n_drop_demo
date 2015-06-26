Template.highchartsPlot.helpers
  demoChart: ->
    chart:
      plotBackgroundColor: null,
      plotBorderWidth: null,
      plotShadow: false
    series: [
      type: 'line'
      name: 'Beijing'
      data: [2,	4,	12,	20,	27,	30,	31,	30,	26,	19,	10,	3]
    ]


Template.highchartsPlot.onRendered ->
  $('.list-group-item').draggable
    # helper: "clone"
    zIndex: 9999
    stop: (event, ui) ->
      #TODO: Check whether item is dragged to the chart!
      city = event.target.innerHTML
      chart = $('#demo').highcharts()
      chart?.addSeries
        type: 'line'
        name: city
        data: temperature[city]
