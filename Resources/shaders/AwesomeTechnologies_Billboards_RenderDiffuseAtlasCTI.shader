Shader "AwesomeTechnologies/Billboards/RenderDiffuseAtlasCTI" {
	Properties {
		[Enum(UnityEngine.Rendering.CullMode)] _Culling ("Culling", Float) = 0
		_MainTex ("Albedo (RGB)", 2D) = "white" {}
		_Cutoff ("Cutoff", Range(0, 1)) = 0.5
		_Color ("Color Variation", Vector) = (0.9,0.5,0,0.1)
		_IsBark ("Is Bark", Float) = 0
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
	Fallback "VertexLit"
}