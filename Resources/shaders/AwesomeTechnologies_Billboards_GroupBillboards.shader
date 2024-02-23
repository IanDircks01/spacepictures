Shader "AwesomeTechnologies/Billboards/GroupBillboards" {
	Properties {
		_Color ("Color", Vector) = (1,1,1,1)
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Bump ("Bump", 2D) = "white" {}
		_HueVariation ("Hue variation", Vector) = (1,1,1,0.5)
		_Cutoff ("Cutoff", Range(0, 1)) = 0.5
		_NormalStrength ("Normal Strength", Range(0, 5)) = 1
		_Brightness ("Brightness", Range(0, 5)) = 1
		_Smoothness ("Smoothness", Range(0, 1)) = 0.2
		_Occlusion ("Occlusion", Range(0, 1)) = 1
		_Metallic ("Metallic", Range(0, 1)) = 0.5
		_MipmapBias ("Mipmap bias", Range(-3, 0)) = -2
		_CullDistance ("Near cull distance", Float) = 0
		_FarCullDistance ("Near cull distance", Float) = 0
		_InRow ("Frames in row", Float) = 8
		_InCol ("Frames in column", Float) = 8
		_CameraPosition ("Camera position", Vector) = (0,0,0,0)
		_SnowAmount ("Snow area", Range(0, 1)) = 0.5
		_SnowColor ("Snow Color", Vector) = (1,1,1,1)
		_SnowBlendFactor ("Snow Blend Factor", Range(0, 10)) = 3
		_SnowBrightness ("Snow Brightness", Range(0, 5)) = 1
		[KeywordEnum(ON, OFF)] AT_HUE_VARIATION ("Use SpeedTree HUE variation", Float) = 0
		_BillboardWindSpeed ("Billboard wind speed", Range(0, 5)) = 1
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