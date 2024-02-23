Shader "Ciconia Studio/Shader Painter/MetalRough/Transparent/CutOut" {
	Properties {
		_Cutoff ("Mask Clip Value", Float) = 0.5
		[Header(SP_Standard MetalRough Layer1)] [HideInInspector] _SpecularColor1 ("Specular Color1", Vector) = (1,1,1,0)
		[HideInInspector] _MetallicGlossMap ("Metallic(RoughA)1", 2D) = "white" {}
		[HideInInspector] _Metallic ("Metallic1", Range(0, 2)) = 0.2
		[HideInInspector] _Glossiness ("Roughness1", Range(0, 2)) = 0.5
		[Header(SP_Standard Albedo Layer1)] [HideInInspector] _Color ("Color1", Vector) = (1,1,1,0)
		[HideInInspector] _MainTex ("Diffuse map1", 2D) = "white" {}
		[HideInInspector] _Desaturation1 ("Desaturation1", Float) = 0
		[HideInInspector] _Saturation1 ("Saturation1", Range(0, 0.45)) = 0
		[HideInInspector] _Brightness1 ("Brightness1", Range(-1, 1)) = 0
		[Toggle] [HideInInspector] _InvertAlbedoAlpha ("Invert Albedo Alpha", Float) = 0
		[Toggle] [HideInInspector] _DisableAlbedoAlphaChannel ("Disable Albedo Alpha Channel", Float) = 0
		[HideInInspector] _MaskAmount ("Mask Amount", Float) = 0
		[HideInInspector] _TilingLayer1 ("TilingLayer1", Float) = 1
		[HideInInspector] _CiconiaStudiocutout ("vivelespommes", Vector) = (1,1,1,0)
		[Header(Sp_Standard Normal Layer1)] [HideInInspector] _BumpMap ("Normal map1", 2D) = "bump" {}
		[HideInInspector] _NormalIntensity1 ("Normal Intensity1", Range(0, 2)) = 1
		[Header(SP_Standard Ao Layer1)] [HideInInspector] _OcclusionMap ("Ambient Occlusion map1", 2D) = "white" {}
		[HideInInspector] _AoIntensity1 ("Ao Intensity1", Range(0, 2)) = 0
		[Header(SP_Standard Emissive Layer1)] [HideInInspector] _EmissionColor ("Emission Color1", Vector) = (0,0,0,0)
		[HideInInspector] _EmissionMap ("Emission map1", 2D) = "white" {}
		[HideInInspector] _EmissiveIntensity1 ("Emissive Intensity1", Range(0, 2)) = 1
		[Header(SP_Fresnel Strength)] [HideInInspector] _FresnelStrength ("Fresnel Strength", Range(0, 8)) = 0
		[HideInInspector] _Ambientlight ("Ambient light", Range(0, 8)) = 0
		[Header(SP_Standard Brush)] [HideInInspector] _Brushposition ("Brush position", Vector) = (0,0,0,0)
		[HideInInspector] _Rotate ("Rotate", Float) = 0
		[HideInInspector] _Brush ("Brush", 2D) = "black" {}
		[HideInInspector] _MaskOpacity ("Mask Opacity", Float) = 1
		[HideInInspector] _Opacity ("Opacity", Float) = 1
		[HideInInspector] _Mask ("Mask", 2D) = "black" {}
		[Toggle] [HideInInspector] _Erase ("Erase", Float) = 0
		[HideInInspector] _Pensize ("Pen size", Float) = 0
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