Shader "Ciconia Studio/Shader Painter/MetalRough/Wind VertexOffset (DirectX 11 Only)" {
	Properties {
		[HideInInspector] _Mask ("Mask", 2D) = "white" {}
		[HideInInspector] _Color ("Color1", Vector) = (1,1,1,1)
		[HideInInspector] _MainTex ("Diffuse map1", 2D) = "white" {}
		[HideInInspector] _MetallicGlossMap ("Metallic(Rough A)1", 2D) = "white" {}
		[HideInInspector] _Metallic ("Metallic1", Range(0, 2)) = 0.2
		[HideInInspector] _Glossiness ("Roughness1", Range(0, 2)) = 0.5
		[HideInInspector] _BumpMap ("Normal map1", 2D) = "bump" {}
		[HideInInspector] _NormalIntensity1 ("Normal Intensity1", Range(0, 2)) = 1
		[HideInInspector] _OcclusionMap ("Ao1", 2D) = "white" {}
		[HideInInspector] _AoIntensity1 ("Ao Intensity1", Range(0, 2)) = 1
		[HideInInspector] _FresnelStrength ("Fresnel Strength", Range(0, 8)) = 0
		[HideInInspector] _AmbientLight ("Ambient Light", Range(0, 8)) = 0
		[MaterialToggle] [HideInInspector] _VisualizeWind ("Visualize Wind", Float) = 0
		[HideInInspector] _WindTexture ("Wind Texture", 2D) = "white" {}
		[MaterialToggle] [HideInInspector] _InvertTexture ("Invert Texture", Float) = 0
		[MaterialToggle] [HideInInspector] _InvertWindFlow ("Invert Wind Flow", Float) = 0
		[HideInInspector] _Deformation ("Deformation", Float) = 0.4
		[HideInInspector] _Rotation ("Rotation", Float) = 0
		[HideInInspector] _Speed ("Speed", Float) = 0.01
		[HideInInspector] _Tessellation ("Tessellation", Float) = 0.01
		[MaterialToggle] [HideInInspector] _UseWorldCoordinate ("Use World Coordinate", Float) = 0
		[HideInInspector] _Smooth ("Smooth", Range(0, 7)) = 0
		[HideInInspector] _Brush ("Brush", 2D) = "black" {}
		[HideInInspector] _Brushposition ("Brush position", Vector) = (0,0,0,0)
		[HideInInspector] _Rotate ("Rotate", Float) = 0
		[HideInInspector] _Opacity ("Opacity", Range(0, 1)) = 0
		[MaterialToggle] [HideInInspector] _Erase ("Erase", Float) = 0
		[HideInInspector] _MaskOpacity ("Mask Opacity", Range(0, 1)) = 1
		[HideInInspector] _EmissionColor ("Emission Color1", Vector) = (0,0,0,1)
		[HideInInspector] _EmissionMap ("Emission map1", 2D) = "white" {}
		[HideInInspector] _EmissiveIntensity1 ("Emissive Intensity1", Range(0, 2)) = 1
		[HideInInspector] _Desaturation1 ("Desaturation1", Range(0, 1)) = 0
		[HideInInspector] _Saturation1 ("Saturation1", Range(-1, 0.49)) = 0
		[HideInInspector] _Brightness1 ("Brightness1", Range(-1, 1)) = 0
		[HideInInspector] _TilingLayer1 ("TilingLayer1", Float) = 1
		[HideInInspector] _TilingLayer2 ("TilingLayer2", Float) = 1
		[MaterialToggle] [HideInInspector] _InvertAlbedoAlpha ("Invert Albedo Alpha", Float) = 1
		[HideInInspector] _MaskAmount ("Mask Amount", Float) = 0
		[MaterialToggle] [HideInInspector] _DisableAlbedoAlphaChannel ("Disable Albedo Alpha Channel", Float) = 1
		[HideInInspector] _SpecColor ("Specular Color1", Vector) = (1,1,1,1)
		[HideInInspector] _CiconiaStudiowindvertexoffset ("vivelespommes", Vector) = (1,1,1,1)
		[HideInInspector] _Cutoff ("Alpha cutoff", Range(0, 1)) = 0.5
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