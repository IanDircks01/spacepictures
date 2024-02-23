Shader "Ciconia Studio/Shader Painter/MetalRough/2Sided/Water VertexOffset (DirectX 11 Only)" {
	Properties {
		[HideInInspector] _Mask ("Mask", 2D) = "black" {}
		[HideInInspector] _MainTex ("Diffuse map1", 2D) = "white" {}
		[HideInInspector] _Color ("Color1", Vector) = (1,1,1,1)
		[HideInInspector] _Color2 ("Color2", Vector) = (0.8602941,0.2340506,0.2340506,1)
		[HideInInspector] _MetallicGlossMap ("Metallic(Rough A)1", 2D) = "white" {}
		[HideInInspector] _Metallic ("Metallic1", Range(0, 2)) = 0.2
		[HideInInspector] _Glossiness ("Roughness1", Range(0, 2)) = 0.5
		[HideInInspector] _Metallic2 ("Metallic2", Range(0, 2)) = 0.2
		[HideInInspector] _Roughness2 ("Roughness2", Range(0, 2)) = 0.5
		[MaterialToggle] [HideInInspector] _NormalBlend ("Normal Blend", Float) = 0
		[HideInInspector] _BumpMap ("Normal map1", 2D) = "bump" {}
		[HideInInspector] _NormalIntensity1 ("Normal Intensity1", Range(0, 2)) = 1
		[HideInInspector] _OcclusionMap ("Ambient Occlusion map1", 2D) = "white" {}
		[HideInInspector] _AoIntensity1 ("Ao Intensity1", Range(0, 2)) = 1
		[HideInInspector] _AoIntensity2 ("Ao Intensity2", Range(0, 2)) = 1
		[HideInInspector] _Ambientlight ("Ambient light", Range(0, 8)) = 0
		[HideInInspector] _Normalmap2 ("Normal map2", 2D) = "bump" {}
		[HideInInspector] _NormalIntensity2 ("Normal Intensity2", Range(0, 2)) = 0.2
		[HideInInspector] _AnimationSpeed2 ("Animation Speed2", Range(0, 1)) = 0.05
		[HideInInspector] _AnimationSpeed1 ("Animation Speed1", Range(0, 1)) = 0.05
		[HideInInspector] _Angle1 ("Angle1", Range(-1, 1)) = 0
		[HideInInspector] _Angle2 ("Angle2", Range(-1, 1)) = 0
		[HideInInspector] _Cubemap ("Cubemap", Cube) = "_Skybox" {}
		[HideInInspector] _ReflectionIntensity ("Reflection Intensity", Range(0, 10)) = 2
		[HideInInspector] _BlurReflection ("Blur Reflection", Range(0, 8)) = 0
		[HideInInspector] _FresnelStrength ("Fresnel Strength", Range(0, 8)) = 0.5
		[HideInInspector] _Brush ("Brush", 2D) = "black" {}
		[HideInInspector] _Brushposition ("Brush position", Vector) = (0,0,0,0)
		[HideInInspector] _Rotate ("Rotate", Float) = 0
		[HideInInspector] _Opacity ("Opacity", Range(0, 1)) = 0
		[MaterialToggle] [HideInInspector] _Erase ("Erase", Float) = 0
		[MaterialToggle] [HideInInspector] _Heightmapcontstraintbymask ("Heightmap contstraint by mask", Float) = 0
		[HideInInspector] _Spread ("Spread", Float) = 0
		[HideInInspector] _Contrast ("Contrast", Float) = 3.5
		[HideInInspector] _Tessellation ("Tessellation", Float) = 0.01
		[HideInInspector] _ZAxis ("Z Axis", Vector) = (0,0,0,0)
		[HideInInspector] _MaskOpacity ("Mask Opacity", Range(0, 1)) = 1
		[HideInInspector] _Desaturation1 ("Desaturation1", Range(0, 1)) = 0
		[HideInInspector] _Saturation1 ("Saturation1", Range(0, 0.49)) = 0
		[HideInInspector] _Brightness1 ("Brightness1", Range(-1, 1)) = 0
		[HideInInspector] _EmissionColor ("Emission Color1", Vector) = (0,0,0,1)
		[HideInInspector] _EmissionMap ("Emission map1", 2D) = "white" {}
		[HideInInspector] _EmissiveIntensity1 ("Emissive Intensity1", Range(0, 2)) = 1
		[HideInInspector] _TilingLayer1 ("TilingLayer1", Float) = 1
		[HideInInspector] _TilingLayer2 ("TilingLayer2", Float) = 1
		[HideInInspector] _SpecColor ("Specular Color1", Vector) = (1,1,1,1)
		[HideInInspector] _SpecularColor2 ("Specular Color2", Vector) = (1,1,1,1)
		[HideInInspector] _CiconiaStudiowatervertexoffset ("vivelespommes", Vector) = (1,1,1,1)
		[HideInInspector] _2Sided ("vivelespoires", Vector) = (1,1,1,1)
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