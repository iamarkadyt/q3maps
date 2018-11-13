///////////////   ADDED SHADERS   //////////////////

textures/q3stronghold/water
{
  qer_editorimage textures/q3stronghold/pool3d_5e.tga
  qer_trans .5
  
  q3map_globaltexture
  
  surfaceparm trans
  surfaceparm nonsolid
  surfaceparm water

  cull disable
  deformVertexes wave 64 sin .25 .25 0 .5	
  
  { 
      map textures/q3stronghold/pool3d_5e.tga
      blendFunc GL_dst_color GL_one
      rgbgen identity
      tcmod scale .5 .5
      tcmod scroll .025 .01
  }
  { 
      map textures/q3stronghold/pool3d_5e.tga
      blendFunc GL_dst_color GL_one
      tcmod scale -.5 -.5
      tcmod scroll .025 .025
  }
  {
      map $lightmap
      blendFunc GL_dst_color GL_zero
      rgbgen identity		
  }
}

textures/q3stronghold/waterfog1
{
  qer_editorimage textures/sfx/fog_grey.tga

  surfaceparm	trans
  surfaceparm	nonsolid
  surfaceparm	fog
  surfaceparm	nolightmap

  fogparms ( 0 0 0 ) 1500
}

textures/q3stronghold/about_q3strong2018
{
	qer_editorimage textures/q3stronghold/about_q3strong2018.tga
	qer_trans 0.99
	surfaceparm nodamage
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	polygonoffset
	q3map_backsplash 0 0
	q3map_surfacelight 300
	q3map_lightsubdivide 128
	{
		clampmap textures/q3stronghold/about_q3strong2018.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen Vertex
	}
}

textures/q3stronghold/tomydad
{
	qer_editorimage textures/q3stronghold/tomydad.tga
	qer_trans 0.99
	surfaceparm nodamage
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	polygonoffset
	q3map_backsplash 0 0
	q3map_surfacelight 300
	q3map_lightsubdivide 128
	{
		clampmap textures/q3stronghold/tomydad.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen Vertex
	}
}

textures/q3stronghold/werestillhere
{
	qer_editorimage textures/q3stronghold/werestillhere.tga
	qer_trans 0.99
	surfaceparm nodamage
	surfaceparm nolightmap
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm trans
	polygonoffset
	q3map_backsplash 0 0
	q3map_surfacelight 300
	q3map_lightsubdivide 128
	{
		clampmap textures/q3stronghold/werestillhere.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen Vertex
	}
}

textures/q3stronghold/kilt_alien_light1_600
{
	qer_editorimage textures/q3stronghold/kilt_alien_light1.tga
	surfaceparm nomarks
	q3map_surfacelight 600

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_light1.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_light1.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/q3stronghold/kilt_alien_light1_1k
{
	qer_editorimage textures/q3stronghold/kilt_alien_light1.tga
	surfaceparm nomarks
	q3map_surfacelight 1000

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_light1.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_light1.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/q3stronghold/sky_q3ctfstrong_mid_indirect
{
	qer_editorimage textures/q3stronghold/toxicsky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	
	q3map_surfacelight 225
	q3map_sunExt 0.99 0.9 0.82 400 50 65 2 16

	skyparms - 256 -

	{
		map textures/q3stronghold/dimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/q3stronghold/redclouds.tga
		blendFunc GL_ONE GL_ONE
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/q3stronghold/sky_q3ctfstrong_high_indirect
{
	qer_editorimage textures/q3stronghold/toxicsky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	
	q3map_surfacelight 400
	q3map_sunExt 0.99 0.9 0.82 400 50 65 2 16

	skyparms - 256 -

	{
		map textures/q3stronghold/dimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/q3stronghold/redclouds.tga
		blendFunc GL_ONE GL_ONE
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}


//////////////   LEGACY SHADERS   //////////////////

textures/q3stronghold/sky_q3ctfstrong
{
	qer_editorimage textures/q3stronghold/toxicsky.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	
	q3map_surfacelight 50
	q3map_sunExt 0.99 0.9 0.82 400 50 65 2 16

	skyparms - 256 -

	{
		map textures/q3stronghold/dimclouds.tga
		tcMod scale 3 2
		tcMod scroll 0.15 0.15
		depthWrite
	}
	{
		map textures/q3stronghold/redclouds.tga
		blendFunc GL_ONE GL_ONE
		tcMod scale 3 3
		tcMod scroll 0.05 0.05
	}
}

textures/q3stronghold/kilt_alien_scratch3a_blue
{
	qer_editorimage textures/q3stronghold/kilt_alien_scratch3a_blue.tga

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_scratch3a_blue.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_scratch3a_bluefx.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .5 .5 0 0.5
	}
}

textures/q3stronghold/kilt_alien_scratch3a_red
{
	qer_editorimage textures/q3stronghold/kilt_alien_scratch3a_red.tga

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_scratch3a_red.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_scratch3a_redfx.tga
		blendFunc GL_ONE GL_ONE
		rgbGen wave sin .5 .5 0 0.5
	}
}

textures/q3stronghold/kilt_tek_blue
{
	qer_editorimage textures/q3stronghold/kilt_tek.tga

	{
		map textures/q3stronghold/kilt_hologirl_blue.tga
		tcmod scale 2 .4
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
		tcMod scroll 3 .6
	}
	{
		map textures/q3stronghold/kilt_tek.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/q3stronghold/kilt_tek2_blue
{
	qer_editorimage textures/q3stronghold/kilt_tek2.tga

	{
		map textures/q3stronghold/kilt_hologirl_blue.tga
		tcmod scale 2 .4
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
		tcMod scroll 3 .6
	}
	{
		map textures/q3stronghold/kilt_tek2.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/q3stronghold/kilt_tek3_blue
{
	qer_editorimage textures/q3stronghold/kilt_tek3.tga

	{
		map textures/q3stronghold/kilt_hologirl_blue.tga
		tcmod scale 2 .4
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
		tcMod scroll 3 .6
	}
	{
		map textures/q3stronghold/kilt_tek3.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/q3stronghold/kilt_tek_red
{
	qer_editorimage textures/q3stronghold/kilt_tek.tga

	{
		map textures/q3stronghold/kilt_hologirl_red.tga
		tcmod scale 2 .4
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
		tcMod scroll 3 .6
	}
	{
		map textures/q3stronghold/kilt_tek.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/q3stronghold/kilt_tek2_red
{
	qer_editorimage textures/q3stronghold/kilt_tek2.tga

	{
		map textures/q3stronghold/kilt_hologirl_red.tga
		tcmod scale 2 .4
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
		tcMod scroll 3 .6
	}
	{
		map textures/q3stronghold/kilt_tek2.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/q3stronghold/kilt_tek3_red
{
	qer_editorimage textures/q3stronghold/kilt_tek3.tga

	{
		map textures/q3stronghold/kilt_hologirl_red.tga
		tcmod scale 2 .4
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
		tcMod scroll 3 .6
	}
	{
		map textures/q3stronghold/kilt_tek3.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

textures/q3stronghold/ceil1_22a_4k
{
	surfaceparm nomarks
	qer_editorimage textures/base_light/ceil1_22a.tga
	q3map_surfacelight 4000

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_22a.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/q3stronghold/ceil1_30_4k
{
	surfaceparm nomarks
	qer_editorimage textures/base_light/ceil1_30.tga
	q3map_surfacelight 4000

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_light/ceil1_30.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/q3stronghold/kilt_alien_light1_2k
{
	qer_editorimage textures/q3stronghold/kilt_alien_light1.tga
	surfaceparm nomarks
	q3map_surfacelight 2000

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_light1.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_alien_light1.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/q3stronghold/kilt_tek_beam3_light
{
	qer_editorimage textures/q3stronghold/kilt_tek_beam3_light.tga
	surfaceparm nomarks
	q3map_surfacelight 2000

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/q3stronghold/kilt_tek_beam3_light.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/base_light/baslt4_1.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/q3stronghold/single_ltube_2k
{
	qer_editorimage textures/q3stronghold/single_ltube.tga
	surfaceparm nomarks
	q3map_surfacelight 2000

	{
		map $lightmap
		rgbGen identity
	}
	{
		map textures/q3stronghold/single_ltube.tga
		blendFunc GL_DST_COLOR GL_ZERO
		rgbGen identity
	}
	{
		map textures/q3stronghold/single_ltube.blend.tga
		blendfunc GL_ONE GL_ONE
	}
}

textures/q3stronghold/diamond2c_weap_red
{
	qer_editorimage textures/q3stronghold/diamond2c_weap.tga

	{
		map textures/q3stronghold/redproto.tga
		tcMod turb 0 .5 0 9.6
		tcmod scale 2 2
		tcmod scroll 9 5
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
	}
	{
		map textures/q3stronghold/diamond2c_weap.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/q3stronghold/diamond2c_weap_blue
{
	qer_editorimage textures/q3stronghold/diamond2c_weap.tga

	{
		map textures/q3stronghold/blueproto.tga
		tcMod turb 0 .5 0 9.6
		tcmod scale 2 2
		tcmod scroll 9 5
		blendFunc GL_ONE GL_ZERO
		rgbGen identity
	}
	{
		map textures/q3stronghold/diamond2c_weap.tga
		blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
		rgbGen identity
	}
	{
		map $lightmap
		blendFunc GL_DST_COLOR GL_ONE_MINUS_DST_ALPHA
		rgbGen identity
	}
}

textures/q3stronghold/eocmonitor
{
	qer_editorimage textures/q3stronghold/eoc1.tga

   	{
       		animMap 5 textures/q3stronghold/eoc1.tga textures/q3stronghold/eoc2.tga textures/q3stronghold/eoc3.tga textures/q3stronghold/eoc4.tga textures/q3stronghold/eoc5.tga textures/q3stronghold/eoc6.tga textures/q3stronghold/eoc7.tga textures/q3stronghold/eoc8.tga
       		rgbGen wave sawtooth 0 1 0 5
   	}
   	{
       		map textures/base_wall/comp3textd.tga
  		blendfunc add
       		rgbgen wave inversesawtooth 0 1 0 .25
       		tcmod scroll 5 .25
   	}
	{
		map textures/q3stronghold/clanmonitor.tga
		blendfunc blend
		rgbgen identity
	}
	{
       		map $lightmap
      		blendfunc filter
       		rgbgen identity
	}
}


textures/q3stronghold/monitor_camred
{
	qer_editorimage textures/q3stronghold/clanmonitor.tga

	{
		animMap .25 textures/q3stronghold/cam1red.tga textures/q3stronghold/cam2red.tga textures/q3stronghold/cam3red.tga textures/q3stronghold/cam4red.tga textures/q3stronghold/cam5red.tga textures/q3stronghold/cam6red.tga textures/q3stronghold/cam7red.tga
		rgbGen wave sawtooth 0 1 0 .25
	}
	{
		map textures/base_wall/comp3textd.tga
		blendfunc add
		rgbGen wave inversesawtooth 0 1 0 .25
		tcmod scroll 5 .25
	}
	{
		map textures/q3stronghold/clanmonitor.tga
		blendfunc blend
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_zero
		rgbgen identity
	}	
}

textures/q3stronghold/monitor_camblue
{
	qer_editorimage textures/q3stronghold/clanmonitor.tga

	{
		animMap .25 textures/q3stronghold/cam1blue.tga textures/q3stronghold/cam2blue.tga textures/q3stronghold/cam3blue.tga textures/q3stronghold/cam4blue.tga textures/q3stronghold/cam5blue.tga textures/q3stronghold/cam6blue.tga textures/q3stronghold/cam7blue.tga
		rgbGen wave sawtooth 0 1 0 .25
	}
	{
		map textures/base_wall/comp3textd.tga
		blendfunc add
		rgbGen wave inversesawtooth 0 1 0 .25
		tcmod scroll 5 .25
	}
	{
		map textures/q3stronghold/clanmonitor.tga
		blendfunc blend
		rgbgen identity
	}
	{
		map $lightmap
		blendfunc gl_dst_color gl_zero
		rgbgen identity
	}

}

textures/q3stronghold/glass
{
	qer_editorimage textures/base_wall/shiny3.tga
	cull none
	qer_trans 0.5

	{
		map textures/effects/tinfx.tga
		tcgen environment
		blendFunc GL_ONE GL_ONE
		rgbGen identity
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc filter
	}
}

