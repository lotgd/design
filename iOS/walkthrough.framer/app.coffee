# This imports all the layers for "home" into homeLayers
homeLayers = Framer.Importer.load "imported/home"

homeLayers.section_addARealm.on Events.TouchStart, ->
	homeLayers.section_addARealm.subLayersByName("cell_addARealm")[0].subLayersByName("bg")[0].visible = false
	homeLayers.section_addARealm.subLayersByName("cell_addARealm")[0].subLayersByName("bg_highlighted")[0].visible = true

homeLayers.section_addARealm.on Events.TouchEnd, ->
	homeLayers.section_addARealm.subLayersByName("cell_addARealm")[0].subLayersByName("bg")[0].visible = true
	homeLayers.section_addARealm.subLayersByName("cell_addARealm")[0].subLayersByName("bg_highlighted")[0].visible = false