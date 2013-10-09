
class BubbleChart
  constructor: (data) ->
    @data = data
    @width = 710
    @height = 680
    @tooltip = CustomTooltip("gates_tooltip", 185)
    @center = {x: 2 * @width / 3, y: 1*@height / 3}
    @year_centers = {
      "2008": {x: 2 *@width / 6, y: 1.1*@height / 3},
      "2009": {x: 4 *@width / 6, y: 1.1*@height / 3},
      "2010": {x: 2 * @width / 6, y: 1.9*@height / 3}
      "2011": {x: 4 * @width / 6, y: 2*@height / 3}
      "2012": {x: 7* @width / 6, y: -5 *@height / 2}
    }
    @top_centers = {
      "1": {x: 2.9 *@width / 6, y: 1.1*@height / 3},
      "2": {x: 3.5 *@width / 6, y: 1.2*@height / 3},
      "3": {x: 3.8 * @width / 6, y: 1.5*@height / 3}
      "4": {x: 3.7 * @width / 6, y: 1.8*@height / 3}
      "5": {x: 3.27 * @width / 6, y: 1.9 *@height / 3}
      "6": {x: 2.8*@width / 6, y: 1.95*@height / 3},
      "7": {x: 2.42 *@width / 6, y: 1.86*@height / 3},
      "8": {x: 2.2 * @width / 6, y: 1.7*@height / 3}
      "9": {x: 2.8 * @width / 8, y: 1.5*@height / 3}
      "10": {x:3.1* @width / 8, y: 1.3*@height / 3}
      "100": {x: 3* @width / 6, y: 1.5*@height / 3}
      "0": {x: 12 * @width / 6, y: 6*@height / 3}
    }
    @sexe_centers = {
      "2": {x: 4*@width / 6, y: 2*@height / 4},
      "1": {x: 2.5 *@width / 6, y: 2*@height / 4},
      "100": {x: 12 *@width / 6, y: -5*@height / 2},
    }
    @mort_centers = {
      "2": {x: 2.4*@width / 6, y: @height / 2},
      "1": {x: 3.7 *@width / 6, y: @height / 2},
      "100": {x: 12 *@width / 6, y: -5*@height / 2},
    }
    @nat1_centers = {
      "Chine": {x: 1.8*@width / 6, y: 1.90*@height / 3},
      "France": {x: 3.2 *@width / 6, y: 1*@height / 2},
      "Etats-Unis": {x: 1.8 * @width / 6, y: @height / 3}
      "Espagne": {x: 2.9 * @width / 6, y: 1.95*@height / 3},
      "Grande-Bretagne": {x: 3 * @width / 6, y: 1.1*@height / 3}
      "Allemagne": {x: 4.35*@width / 6, y: 1.4*@height / 3},
      "Autres": {x: 4.3 *@width / 6, y: 1.8*@height / 3},
      "Suisse": {x: 3.7 * @width / 6, y: 1.0*@height / 2}
      "Pays-Bas - Belgique": {x: 3.9 * @width / 6, y: 1.1*@height / 3},
      "Italie": {x: 3.6 * @width / 6, y: 1.9*@height / 3},
      "Russie": {x: 4.7 * @width / 6, y: 1*@height / 4},
      "Sud": {x: 1.8 * @width / 6, y: 1.75*@height / 4},
      "none": {x: 5 * @width / 6, y: -4*@height / 3},
      "Japon": {x: 1.6 * @width / 6, y: 2.2*@height / 3},
    }
    @maitre_centers = {
      "1": {x: 1.7*@width / 6, y: @height / 3},
      "2": {x: 3 *@width / 6, y: @height / 3},
      "3": {x: 4.5 * @width / 6, y: @height / 3},
      "4": {x: 1.7 * @width / 6, y: 1.9*@height / 3},
      "5": {x: 2.7 * @width / 6, y: 1.9*@height / 3},
      "6": {x: 3.7 *@width / 6, y: 1.9*@height / 3},
      "7": {x: 4.7 *@width / 6, y: 1.9*@height / 3},
      "0": {x: 15 * @width / 6, y: -4*@height / 3}
    }
    @auction1_centers = {
      "c-hk": {x: 1.8*@width / 6, y: 2.5*@height / 3.5},
      "autre": {x: 4.3 *@width / 6, y: 1.65*@height / 3},
      "c-l": {x: 1.9 * @width / 6, y: 1.5*@height / 3},
      "c-ny": {x: 1.9 * @width / 6, y: 1.1*@height / 3},
      "c-p": {x: 1.9 * @width / 6, y: 1.85*@height / 3},
      "none": {x: @width / 6, y: 10*@height / 3},
      "poly": {x: 4.3*@width / 6, y: 1.1*@height / 3.5},
      "s-hk": {x: 3.1 * @width / 6, y: 2*@height / 3},
      "s-l": {x: 3.1*@width / 6, y: 1.6*@height / 3},
      "s-ny": {x: 3.1*@width / 6, y: 1.1*@height / 3},
    }
    @surface_centers = {
      "A": {x: 2*@width / 6, y: @height / 2.5},
      "B": {x: 2 *@width / 6, y: @height / 2.5},
      "C": {x: 3.1 * @width / 6, y: @height / 2.5}
      "D": {x: 4.2 * @width / 6, y: @height / 2.5}
      "E": {x: 4.2* @width / 6, y: 1.8*@height / 3}
      "F": {x: 1.8*@width / 6, y: 2*@height / 3},
      "G": {x: 2.7 *@width / 6, y: 2*@height / 3},
      "Z": {x: 12 * @width / 6, y: 2*@height / 3}
      "none": {x: 12 * @width / 6, y: 2*@height / 3}
    }
    @datesiecle_centers = {
      "14eme": {x: 1.25*@width / 5, y: 1*@height / 3.4},
      "16eme": {x: 2.47 *@width / 5, y: 1*@height / 2.9},
      "17eme": {x: 3.05 * @width / 5, y: 1*@height / 3.1}
      "18eme": {x: 3.68 * @width / 5, y: 1*@height / 3.4}
      "19eme": {x: 1.5 * @width / 5, y: 1.5*@height / 3}
      "20eme": {x: 2.5*@width / 5, y: 1.8*@height / 3},
      "21eme": {x: 3.4*@width / 5, y: 1.4*@height / 3},
      "none": {x: 12 * @width / 6, y: -8*@height / 3}
    }
    @date20_centers = {
      "1900": {x: 1.5*@width / 6, y: 0.95*@height / 4},
      "1910": {x: 2.5 *@width / 6, y: 1.2*@height / 4},
      "1920": {x: 3.5 * @width / 6, y: 1*@height / 4}
      "1930": {x: 4.5 * @width / 6, y: 1.1*@height / 4},
      "1940": {x: 1.5 * @width / 6, y: 1.95*@height / 4}
      "1950": {x: 2.5*@width / 6, y: 1.85*@height / 4},
      "1960": {x: 3.5 *@width / 6, y: 2.12*@height / 4},
      "1970": {x: 4.5 * @width / 6, y: 1.95*@height / 4}
      "1980": {x: 1.5 * @width / 6, y: 2.9*@height / 4},
      "1990": {x: 2.5 * @width / 6, y: 2.8*@height / 4},
      "2000": {x: 3.5 * @width / 6, y: 2.7*@height / 4},
      "2010": {x:4.55 * @width / 6, y: 2.84*@height / 4},
      "none": {x: 12 * @width / 6, y: -10*@height / 3},
    }
    @layout_gravity = -0.01
    @damper = 0.1
    @vis = null
    @nodes = []
    @force = null
    @circles = null
    @fill_color = d3.scale.ordinal()
      .domain(["D", "B", "A","C","none"])
      .range(["#FEE5D9", "#A1C9E4", "#FB6A4A","#CB181D","#fff"])
    max_amount = d3.max(@data, (d) -> parseInt(d.total_amount))
    @radius_scale = d3.scale.pow().exponent(0.9).domain([0, max_amount]).range([2, 50])
    this.create_nodes()
    this.create_vis()
  create_nodes: () =>
    @data.forEach (d) =>
      node = {
        id: d.id
        radius: @radius_scale(parseInt(d.total_amount))
        value: d.total_amount
        name: d.nom
        top: d.top
        maitre: d.maitre
        nat: d.nat
        nat1: d.nat1
        title: d.title
        sexe: d.sexe
        mort: d.mort
        datevente: d.datavente
        auction: d.auction
        year: d.start_year
        auction1: d.auction1
        media: d.media
        media1: d.media1
        surface: d.surface
        date: d.date
        datesiecle: d.datesiecle
        date20: d.date20
        img: d.img
        x: Math.random() * 900
        y: Math.random() * 800
      }
      @nodes.push node
    @nodes.sort (a,b) -> b.value - a.value
  create_vis: () =>
    @vis = d3.select("#vis").append("svg")
      .attr("width", @width)
      .attr("height", @height)
      .attr("id", "svg_vis")
    @circles = @vis.selectAll("circle")
      .data(@nodes, (d) -> d.id)
    that = this
    @circles.enter().append("circle")
      .attr("r", 0)
      .attr("fill", (d) => @fill_color(d.media1))
      .attr("stroke-width", 1.2)
      .attr("stroke","#666")
      .attr("id", (d) -> "bubble_#{d.id}")
      .on("mouseover", (d,i) -> that.show_details(d,i,this))
      .on("mouseout", (d,i) -> that.hide_details(d,i,this))
    @circles.transition().duration(2000).attr("r", (d) -> d.radius)
  charge: (d) ->
    -Math.pow(d.radius, 2.0) / 8
  start: () =>
    @force = d3.layout.force()
      .nodes(@nodes)
      .size([@width, @height])
  display_group_all: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_center(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_auction1s()
    this.hide_datesiecles()
    this.hide_date20s()
    this.hide_surfaces()
    this.hide_maitres()
    this.hide_nat1s()
    this.hide_morts()
    this.hide_tops()
    this.hide_sexes()
  move_towards_center: (alpha) =>
    (d) =>
      d.x = d.x + (@center.x - d.x) * (@damper + 0.02) * alpha
      d.y = d.y + (@center.y - d.y) * (@damper + 0.02) * alpha
  display_by_year: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_year(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_tops()
    this.hide_datesiecles()
    this.hide_date20s()
    this.hide_auction1s()
    this.hide_surfaces()
    this.hide_maitres()
    this.hide_nat1s()
    this.hide_morts()
    this.hide_sexes()
    this.display_years()
  display_by_top: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_top(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_maitres()
    this.hide_datesiecles()
    this.hide_auction1s()
    this.hide_date20s()
    this.hide_surfaces()
    this.hide_nat1s()
    this.hide_morts()
    this.hide_sexes()
    this.display_tops()
  display_by_sexe: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_sexe(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_nat1s()
    this.hide_auction1s()
    this.hide_date20s()
    this.hide_surfaces()
    this.hide_maitres()
    this.hide_morts()
    this.hide_datesiecles()
    this.hide_tops()
    this.display_sexes()
  display_by_mort: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_mort(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_nat1s()
    this.hide_maitres()
    this.hide_surfaces()
    this.hide_datesiecles()
    this.hide_date20s()
    this.hide_auction1s()
    this.hide_sexes()
    this.hide_tops()
    this.display_morts()
  display_by_nat1: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_nat1(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_morts()
    this.hide_surfaces()
    this.hide_maitres()
    this.hide_date20s()
    this.hide_auction1s()
    this.hide_datesiecles()
    this.hide_sexes()
    this.hide_tops()
    this.display_nat1s()
  display_by_maitre: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_maitre(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_morts()
    this.hide_maitres()
    this.hide_auction1s()
    this.hide_surfaces()
    this.hide_date20s()
    this.hide_datesiecles()
    this.hide_sexes()
    this.hide_tops()
    this.hide_nat1s()
    this.display_maitres()
  display_by_auction1: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_auction1(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_morts()
    this.hide_maitres()
    this.hide_datesiecles()
    this.hide_surfaces()
    this.hide_maitres()
    this.hide_date20s()
    this.hide_sexes()
    this.hide_tops()
    this.hide_nat1s()
    this.display_auction1s()
  display_by_surface: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_surface(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_morts()
    this.hide_maitres()
    this.hide_datesiecles()
    this.hide_auction1s()
    this.hide_maitres()
    this.hide_date20s()
    this.hide_sexes()
    this.hide_tops()
    this.hide_nat1s()
    this.display_surfaces()
  display_by_datesiecle: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_datesiecle(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_morts()
    this.hide_date20s()
    this.hide_maitres()
    this.hide_auction1s()
    this.hide_sexes()
    this.hide_tops()
    this.hide_surfaces()
    this.hide_nat1s()
    this.display_datesiecles()
  display_by_date20: () =>
    @force.gravity(@layout_gravity)
      .charge(this.charge)
      .friction(0.9)
      .on "tick", (e) =>
        @circles.each(this.move_towards_date20(e.alpha))
          .attr("cx", (d) -> d.x)
          .attr("cy", (d) -> d.y)
    @force.start()
    this.hide_years()
    this.hide_morts()
    this.hide_maitres()
    this.hide_datesiecles()
    this.hide_auction1s()
    this.hide_maitres()
    this.hide_sexes()
    this.hide_tops()
    this.hide_surfaces()
    this.hide_nat1s()
    this.display_date20s()
  move_towards_year: (alpha) =>
    (d) =>
      target = @year_centers[d.year]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_top: (alpha) =>
    (d) =>
      target = @top_centers[d.top]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_sexe: (alpha) =>
    (d) =>
      target = @sexe_centers[d.sexe]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_mort: (alpha) =>
    (d) =>
      target = @mort_centers[d.mort]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_nat1: (alpha) =>
    (d) =>
      target = @nat1_centers[d.nat1]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_maitre: (alpha) =>
    (d) =>
      target = @maitre_centers[d.maitre]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_auction1: (alpha) =>
    (d) =>
      target = @auction1_centers[d.auction1]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_surface: (alpha) =>
    (d) =>
      target = @surface_centers[d.surface]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_datesiecle: (alpha) =>
    (d) =>
      target = @datesiecle_centers[d.datesiecle]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  move_towards_date20: (alpha) =>
    (d) =>
      target = @date20_centers[d.date20]
      d.x = d.x + (target.x - d.x) * (@damper + 0.02) * alpha * 1.1
      d.y = d.y + (target.y - d.y) * (@damper + 0.02) * alpha * 1.1
  display_years: () =>
    years_x = {"2008": 190, "2009": 550, "2010": 190,"2011": 550}
    years_y = {"2008": 40, "2009": 90, "2010": 330,"2011": 350}
    years_data = d3.keys(years_x)
    years = @vis.selectAll(".years")
      .data(years_data)
    years.enter().append("text")
      .attr("class", "years")
      .attr("x", (d) => years_x[d] )
      .attr("y", (d) => years_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_tops: () =>
    tops_x = {"World": 328,"record":328,"(2012)":328}
    tops_y = {"World": 320,"record":340,"(2012)":360}
    tops_data = d3.keys(tops_x)
    tops = @vis.selectAll(".tops")
      .data(tops_data)
    tops.enter().append("text")
      .attr("class", "tops")
      .attr("x", (d) => tops_x[d] )
      .attr("y", (d) => tops_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_sexes: () =>
    sexes_x = {"men": 290, "women": 620}
    sexes_y = {"men": 90, "women": 295}
    sexes_data = d3.keys(sexes_x)
    sexes = @vis.selectAll(".sexes")
      .data(sexes_data)
    sexes.enter().append("text")
      .attr("class", "sexes")
      .attr("x", (d) => sexes_x[d] )
      .attr("y", (d) => sexes_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_morts: () =>
    morts_x = {"alive": 145, "dead": 450}
    morts_y = {"alive": 240, "dead": 90}
    morts_data = d3.keys(morts_x)
    morts = @vis.selectAll(".morts")
      .data(morts_data)
    morts.enter().append("text")
      .attr("class", "morts")
      .attr("x", (d) => morts_x[d] )
      .attr("y", (d) => morts_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_nat1s: () =>
    nat1s_x = {"AMERICAS": 110, "United States of America": 120, "Argentina": 120,"EUROPA": 450,"Great Britain":360,"France":390,"ASIA":110,"China":110,"Japan":110,"Spain":320,"Italy":470,"Switzerland":525,"Netherlands - Belgium":540,"Russia":640,"Germany":640,"Others":640}
    nat1s_y = {"AMERICAS": 25, "United States of America": 60, "Argentina": 280,"EUROPA": 25,"Great Britain":60,"France":243,"ASIA":360;"China":390,"Japan":600,"Spain":435,"Italy":445,"Switzerland":230,"Netherlands - Belgium":110,"Russia":55,"Germany":220,"Others":380}
    nat1s_data = d3.keys(nat1s_x)
    nat1s = @vis.selectAll(".nat1s")
      .data(nat1s_data)
    nat1s.enter().append("text")
      .attr("class", "nat1s")
      .attr("x", (d) => nat1s_x[d] )
      .attr("y", (d) => nat1s_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_maitres: () =>
    maitres_x = {"Picasso": 140,"Warhol": 345,"Giacometti": 570,"Richter": 130,"Bacon": 295,"Matisse": 455,"Monet": 600,}
    maitres_y = {"Picasso": 90,"Warhol": 90,"Giacometti": 90,"Richter": 390,"Bacon": 390,"Matisse": 390,"Monet": 390,}
    maitres_data = d3.keys(maitres_x)
    maitres = @vis.selectAll(".maitres")
      .data(maitres_data)
    maitres.enter().append("text")
      .attr("class", "maitres")
      .attr("x", (d) => maitres_x[d] )
      .attr("y", (d) => maitres_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_auction1s: () =>
    auction1s_x = {"CHRISTIE'S": 120, "SOTHEBY'S": 390, "BEIJING POLY INT.":600,"OTHERS":600,"New-York":150,"New York":420,"London":150,"Paris":150,"Hongkong":150,"London.":420,"Hong-Kong":420,"Pékin":600}
    auction1s_y = {"CHRISTIE'S": 20, "SOTHEBY'S": 20, "BEIJING POLY INT.": 20,"OTHERS":320,"New-York":55,"New York":55,"London":315,"Paris":489,"Hongkong":600,"London.":325,"Hong-Kong":570,"Pékin":55}
    auction1s_data = d3.keys(auction1s_x)
    auction1s = @vis.selectAll(".auction1s")
      .data(auction1s_data)
    auction1s.enter().append("text")
      .attr("class", "auction1s")
      .attr("x", (d) => auction1s_x[d] )
      .attr("y", (d) => auction1s_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_surfaces: () =>
    surfaces_x = {"PAINTING - DRAWING - WATERCOLOR": 350, "-1m²": 160, "1-2m²": 370,"2-3m²": 570, "+3m²": 570,"SCULPTURE":220,"-1m height":110,"+1m height":300 }
    surfaces_y = {"PAINTING - DRAWING - WATERCOLOR": 40, "-1m²": 90, "1-2m²": 90,"2-3m²": 90, "+3m²": 400,"SCULPTURE":415,"-1m height":450,"+1m height":450}
    surfaces_data = d3.keys(surfaces_x)
    surfaces = @vis.selectAll(".surfaces")
      .data(surfaces_data)
    surfaces.enter().append("text")
      .attr("class", "surfaces")
      .attr("x", (d) => surfaces_x[d] )
      .attr("y", (d) => surfaces_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_datesiecles: () =>
    datesiecles_x = {"14th": 90, "15th": 220, "16th": 350,"17th": 480,"18th": 610,"19th":100,"20th":350,"21th":600}
    datesiecles_y = {"14th": 40, "15th": 40, "16th": 40,"17th": 40,"18th": 40,"19th":210,"20th":210,"21th":210}
    datesiecles_data = d3.keys(datesiecles_x)
    datesiecles = @vis.selectAll(".datesiecles")
      .data(datesiecles_data)
    datesiecles.enter().append("text")
      .attr("class", "datesiecles")
      .attr("x", (d) => datesiecles_x[d] )
      .attr("y", (d) => datesiecles_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  display_date20s: () =>
    date20s_x = {"1900-1910": 78,"1910-1920": 250,"1920-1930": 426,"1930-1940": 600,"1940-1950": 78,"1950-1960": 250,"1960-1970": 426,"1970-1980": 620,"1980-1990": 95,"1990-2000": 250,"2000-2010": 426,"+ 2010": 620}
    date20s_y = {"1900-1910": 30,"1910-1920": 30,"1920-1930": 30,"1930-1940": 30,"1940-1950": 274,"1950-1960": 274,"1960-1970": 274,"1970-1980": 274,"1980-1990": 520,"1990-2000": 520,"2000-2010": 555,"+ 2010": 555}
    date20s_data = d3.keys(date20s_x)
    date20s = @vis.selectAll(".date20s")
      .data(date20s_data)
    date20s.enter().append("text")
      .attr("class", "date20s")
      .attr("x", (d) => date20s_x[d] )
      .attr("y", (d) => date20s_y[d] )
      .attr("text-anchor", "middle")
      .text((d) -> d)
  hide_years: () =>
    years = @vis.selectAll(".years").remove()
  show_details: (data, i, element) =>
    d3.select(element).attr("stroke","#000")
    content = "<span class=\"name\"></span><span class=\"value\"><small>#{addCommas(data.value)} dollars</small></span><br><hr>"
    content += "<span class=\"name\"></span><span class=\"value\"><big> #{data.title}</big></span><br>"
    content += "<span class=\"name\"></span><span class=\"value\"><small> #{data.name} &#40;#{data.nat}&#41;</small></span>"
    content += "<span class=\"name\"></span><span class=\"value\"><small> - #{data.date}</small></span><br><hr>"
    content +="<span class=\"name\"><img src='img/#{data.img}'></img></span>"


    @tooltip.showTooltip(content,d3.event)
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_tops: () =>
    tops = @vis.selectAll(".tops").remove()

  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_sexes: () =>
    sexes = @vis.selectAll(".sexes").remove()
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_morts: () =>
    morts = @vis.selectAll(".morts").remove()
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_nat1s: () =>
    nat1s = @vis.selectAll(".nat1s").remove()
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_maitres: () =>
    maitres = @vis.selectAll(".maitres").remove()
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_auction1s: () =>
    auction1s = @vis.selectAll(".auction1s").remove()
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_surfaces: () =>
    surfaces = @vis.selectAll(".surfaces").remove()
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_datesiecles: () =>
    datesiecles = @vis.selectAll(".datesiecles").remove()
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
  hide_date20s: () =>
    date20s = @vis.selectAll(".date20s").remove()
  hide_details: (data, i, element) =>
    d3.select(element).attr("stroke", "#818181")
    @tooltip.hideTooltip()
root = exports ? this
$ ->
  chart = null
  render_vis = (csv) ->
    chart = new BubbleChart csv
    chart.start()
    root.display_year()
  root.display_all = () =>
    chart.display_group_all()
  root.display_year = () =>
    chart.display_by_year()
  root.display_top = () =>
    chart.display_by_top()
  root.display_sexe = () =>
    chart.display_by_sexe()
  root.display_mort = () =>
    chart.display_by_mort()
  root.display_nat1 = () =>
    chart.display_by_nat1()
  root.display_maitre = () =>
    chart.display_by_maitre()
  root.display_auction1 = () =>
    chart.display_by_auction1()
  root.display_surface = () =>
    chart.display_by_surface()
  root.display_datesiecle = () =>
    chart.display_by_datesiecle()
  root.display_date20 = () =>
    chart.display_by_date20()
  root.toggle_view = (view_type) =>
    if view_type == 'year'
      root.display_year()
    else if view_type == 'top'
      root.display_top()
    else if view_type == 'sexe'
      root.display_sexe()
    else if view_type == 'mort'
      root.display_mort()
    else if view_type == 'nat1'
      root.display_nat1()
    else if view_type == 'maitre'
      root.display_maitre()
    else if view_type == 'auction1'
      root.display_auction1()
    else if view_type == 'media1'
      root.display_media1()
    else if view_type == 'surface'
      root.display_surface()
    else if view_type == 'datesiecle'
      root.display_datesiecle()
    else if view_type == 'date20'
      root.display_date20()
    else
      root.display_all()
  d3.csv "data/dataeng.csv", render_vis