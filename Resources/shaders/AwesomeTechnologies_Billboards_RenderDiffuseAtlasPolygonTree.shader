Shader "AwesomeTechnologies/Billboards/RenderDiffuseAtlasPolygonTree" {
	Properties {
		_MainTexture ("Albedo (RGB)", 2D) = "white" {}
		_Cutoff ("Cutoff", Range(0, 1)) = 0.5
		_ColorTint ("ColorTint", Vector) = (1,1,1,1)
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "VertexLit"
}