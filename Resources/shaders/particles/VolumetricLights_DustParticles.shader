Shader "VolumetricLights/DustParticles" {
	Properties {
		_MainTex ("Particle Texture", 2D) = "white" {}
		[HideInInspector] _ParticleDistanceAtten ("Distance Atten", Float) = 10
		[HideInInspector] _ParticleTintColor ("Tint Color", Vector) = (0.5,0.5,0.5,0.5)
		[HideInInspector] _BoundsCenter ("Bounds Center", Vector) = (0,0,0,1)
		[HideInInspector] _BoundsExtents ("Bounds Size", Vector) = (0,0,0,1)
		[HideInInspector] _ConeTipData ("Cone Tip Data", Vector) = (0,0,0,0.1)
		[HideInInspector] _ExtraGeoData ("Extra Geo Data", Vector) = (1,0,0,1)
		[HideInInspector] _Border ("Border", Float) = 0.1
		[HideInInspector] _DistanceFallOff ("Length Falloff", Float) = 0
		[HideInInspector] _FallOff ("FallOff Physical", Vector) = (1,2,1,1)
		[HideInInspector] _ConeAxis ("Cone Axis", Vector) = (0,0,0,0.5)
		[HideInInspector] _AreaExtents ("Area Extents", Vector) = (0,0,0,1)
		[HideInInspector] _ShadowIntensity ("Shadow Intensity", Vector) = (0,1,0,0)
		[HideInInspector] _Cookie2D ("Cookie (2D)", 2D) = "black" {}
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