Shader "Hidden/CTAA_Enhance_SPS" {
	Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_AEXCTAA ("Pixel Width", Float) = 1
		_AEYCTAA ("Pixel Height", Float) = 1
		_AESCTAA ("Strength", Range(0, 5)) = 0.6
		_AEMAXCTAA ("Clamp", Range(0, 1)) = 0.05
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
}