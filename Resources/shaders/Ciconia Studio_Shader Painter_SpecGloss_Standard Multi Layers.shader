Shader "Ciconia Studio/Shader Painter/SpecGloss/Standard Multi Layers" {
	Properties {
		[Header(Sp_Standard Normal Layer4)] [HideInInspector] _Normalmap4 ("Normal map4", 2D) = "bump" {}
		[HideInInspector] _NormalIntensity4 ("Normal Intensity4", Range(0, 2)) = 1
		[Header(Sp_Standard Normal Layer3)] [HideInInspector] _Normalmap3 ("Normal map3", 2D) = "bump" {}
		[HideInInspector] _NormalIntensity3 ("Normal Intensity3", Range(0, 2)) = 1
		[Header(SP_Multi Layers SpecGloss Layer3)] [HideInInspector] _SpecularColor3 ("Specular Color3", Vector) = (1,1,1,0)
		[HideInInspector] _SpecularIntensity3 ("Specular Intensity3", Range(0, 2)) = 0.2
		[HideInInspector] _Glossiness3 ("Glossiness3", Range(0, 2)) = 0.5
		[Header(SP_Multi Layers SpecGloss Layer4)] [HideInInspector] _SpecularColor4 ("Specular Color4", Vector) = (1,1,1,0)
		[HideInInspector] _SpecularIntensity4 ("Specular Intensity4", Range(0, 2)) = 0.2
		[HideInInspector] _Glossiness4 ("Glossiness4", Range(0, 2)) = 0.5
		[Header(SP_Multi Layers SpecGloss Layer2)] [HideInInspector] _SpecularColor2 ("Specular Color2", Vector) = (1,1,1,0)
		[HideInInspector] _SpecularIntensity2 ("Specular Intensity2", Range(0, 2)) = 0.2
		[HideInInspector] _Glossiness2 ("Glossiness2", Range(0, 2)) = 0.5
		[Header(SP_Multi Layers Albedo Layer4)] [HideInInspector] _Color4 ("Color4", Vector) = (1,1,1,0)
		[HideInInspector] _Diffusemap4 ("Diffuse map4", 2D) = "white" {}
		[HideInInspector] _Desaturation4 ("Desaturation4", Float) = 0
		[HideInInspector] _Saturation4 ("Saturation4", Range(0, 0.45)) = 0
		[HideInInspector] _Brightness4 ("Brightness4", Range(-1, 1)) = 0
		[HideInInspector] _CiconiaStudioStandardMultiLayer ("vivelespommes", Vector) = (1,1,1,0)
		[Header(SP_Multi Layers Heightmap control)] [HideInInspector] _Spread ("Spread", Float) = 0
		[HideInInspector] _Contrast ("Contrast", Float) = 3.5
		[Toggle] [HideInInspector] _HeightmapcontstraintbymaskLayer2 ("Heightmap contstraint by mask Layer2", Float) = 0
		[Toggle] [HideInInspector] _HeightmapcontstraintbymaskLayer3 ("Heightmap contstraint by mask Layer3", Float) = 0
		[Toggle] [HideInInspector] _HeightmapcontstraintbymaskLayer1 ("Heightmap contstraint by mask Layer1", Float) = 0
		[Header(SP_Multi Layers Albedo Layer3)] [HideInInspector] _Color3 ("Color3", Vector) = (1,1,1,0)
		[HideInInspector] _Diffusemap3 ("Diffuse map3", 2D) = "white" {}
		[HideInInspector] _Desaturation3 ("Desaturation3", Float) = 0
		[HideInInspector] _Saturation3 ("Saturation3", Range(0, 0.45)) = 0
		[HideInInspector] _Brightness3 ("Brightness3", Range(-1, 1)) = 0
		[Header(SP_Multi Layers Brush)] [HideInInspector] _Brushposition ("Brush position", Vector) = (0,0,0,0)
		[HideInInspector] _Rotate ("Rotate", Float) = 0
		[HideInInspector] _Brush ("Brush", 2D) = "black" {}
		[HideInInspector] _MaskROpacity ("MaskR Opacity", Float) = 1
		[HideInInspector] _MaskBOpacity ("MaskB Opacity", Float) = 1
		[HideInInspector] _MaskGOpacity ("MaskG Opacity", Float) = 1
		[HideInInspector] _Opacity ("Opacity", Float) = 1
		[HideInInspector] _Mask ("Mask", 2D) = "black" {}
		[Toggle] [HideInInspector] _Erase ("Erase", Float) = 0
		[HideInInspector] _Pensize ("Pen size", Float) = 0
		[HideInInspector] _LayerSelector ("LayerSelector", Vector) = (0,0,0,0)
		[HideInInspector] _TilingLayer1 ("TilingLayer1", Float) = 1
		[HideInInspector] _TilingLayer3 ("TilingLayer3", Float) = 1
		[HideInInspector] _TilingLayer2 ("TilingLayer2", Float) = 1
		[HideInInspector] _TilingLayer4 ("TilingLayer4", Float) = 1
		[Header(SP_Standard Albedo Layer1)] [HideInInspector] _Color ("Color1", Vector) = (1,1,1,0)
		[HideInInspector] _MainTex ("Diffuse map1", 2D) = "white" {}
		[HideInInspector] _Desaturation1 ("Desaturation1", Float) = 0
		[HideInInspector] _Saturation1 ("Saturation1", Range(0, 0.45)) = 0
		[HideInInspector] _Brightness1 ("Brightness1", Range(-1, 1)) = 0
		[Header(SP_Standard Albedo Layer2)] [HideInInspector] _Diffusemap2 ("Diffuse map2", 2D) = "white" {}
		[HideInInspector] _Color2 ("Color2", Vector) = (1,1,1,0)
		[HideInInspector] _Desaturation2 ("Desaturation2", Float) = 0
		[HideInInspector] _Saturation2 ("Saturation2", Range(0, 0.45)) = 0
		[HideInInspector] _Brightness2 ("Brightness2", Range(-1, 1)) = 0
		[Header(SP_Standard SpecGloss Layer1)] [HideInInspector] _SpecGlossMap ("Specular map(Gloss A)1", 2D) = "white" {}
		[HideInInspector] _SpecularColor1 ("Specular Color1", Vector) = (1,1,1,0)
		[HideInInspector] _SpecularIntensity1 ("Specular Intensity1", Range(0, 2)) = 0.2
		[HideInInspector] _Glossiness1 ("Glossiness1", Range(0, 2)) = 0.5
		[Header(Sp_Standard Normal Layer1)] [HideInInspector] _BumpMap ("Normal map1", 2D) = "bump" {}
		[HideInInspector] _NormalIntensity1 ("Normal Intensity1", Range(0, 2)) = 1
		[Toggle] [HideInInspector] _NormalBlend ("Normal Blend", Float) = 0
		[Header(Sp_Standard Normal Layer2)] [HideInInspector] _Normalmap2 ("Normal map2", 2D) = "bump" {}
		[HideInInspector] _NormalIntensity2 ("Normal Intensity2", Range(0, 2)) = 1
		[Header(SP_Standard Ao Layer1)] [HideInInspector] _OcclusionMap ("Ambient Occlusion map1", 2D) = "white" {}
		[HideInInspector] _AoIntensity1 ("Ao Intensity1", Range(0, 2)) = 0
		[Header(SP_Standard Emissive Layer1)] [HideInInspector] _EmissionColor ("Emission Color1", Vector) = (0,0,0,0)
		[HideInInspector] _EmissionMap ("Emission map1", 2D) = "white" {}
		[HideInInspector] _EmissiveIntensity1 ("Emissive Intensity1", Range(0, 2)) = 1
		[Header(SP_Fresnel Strength)] [HideInInspector] _FresnelStrength ("Fresnel Strength", Range(0, 8)) = 0
		[HideInInspector] _Ambientlight ("Ambient light", Range(0, 8)) = 0
		[HideInInspector] _texcoord ("", 2D) = "white" {}
		[HideInInspector] __dirty ("", Float) = 1
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Diffuse"
}