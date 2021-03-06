"""External dependencies for grpc-java."""

def grpc_java_repositories(
    omit_com_google_api_grpc_google_common_protos=False,
    omit_com_google_code_findbugs_jsr305=False,
    omit_com_google_code_gson=False,
    omit_com_google_errorprone_error_prone_annotations=False,
    omit_com_google_guava=False,
    omit_com_google_instrumentation_api=False,
    omit_com_google_protobuf=False,
    omit_com_google_protobuf_java=False,
    omit_com_google_protobuf_nano_protobuf_javanano=False,
    omit_com_squareup_okhttp=False,
    omit_com_squareup_okio=False,
    omit_io_netty_buffer=False,
    omit_io_netty_common=False,
    omit_io_netty_transport=False,
    omit_io_netty_codec=False,
    omit_io_netty_codec_socks=False,
    omit_io_netty_codec_http=False,
    omit_io_netty_codec_http2=False,
    omit_io_netty_handler=False,
    omit_io_netty_handler_proxy=False,
    omit_io_netty_resolver=False,
    omit_io_netty_tcnative_boringssl_static=False):
  """Imports dependencies for grpc-java."""
  if not omit_com_google_api_grpc_google_common_protos:
    com_google_api_grpc_google_common_protos()
  if not omit_com_google_code_findbugs_jsr305:
    com_google_code_findbugs_jsr305()
  if not omit_com_google_code_gson:
    com_google_code_gson()
  if not omit_com_google_errorprone_error_prone_annotations:
    com_google_errorprone_error_prone_annotations()
  if not omit_com_google_guava:
    com_google_guava()
  if not omit_com_google_instrumentation_api:
    com_google_instrumentation_api()
  if not omit_com_google_protobuf:
    com_google_protobuf()
  if not omit_com_google_protobuf_java:
    com_google_protobuf_java()
  if not omit_com_google_protobuf_nano_protobuf_javanano:
    com_google_protobuf_nano_protobuf_javanano()
  if not omit_com_squareup_okhttp:
    com_squareup_okhttp()
  if not omit_com_squareup_okio:
    com_squareup_okio()
  if not omit_io_netty_buffer:
    io_netty_buffer()
  if not omit_io_netty_common:
    io_netty_common()
  if not omit_io_netty_transport:
    io_netty_transport()
  if not omit_io_netty_codec:
    io_netty_codec()
  if not omit_io_netty_codec_socks:
    io_netty_codec_socks()
  if not omit_io_netty_codec_http:
    io_netty_codec_http()
  if not omit_io_netty_codec_http2:
    io_netty_codec_http2()
  if not omit_io_netty_handler:
    io_netty_handler()
  if not omit_io_netty_handler_proxy:
    io_netty_handler_proxy()
  if not omit_io_netty_resolver:
    io_netty_resolver()
  if not omit_io_netty_tcnative_boringssl_static:
    io_netty_tcnative_boringssl_static()
  native.bind(
    name = "guava",
    actual = "@com_google_guava//jar",
  )
  native.bind(
    name = "gson",
    actual = "@com_google_code_gson//jar",
  )

def com_google_api_grpc_google_common_protos():
  native.maven_jar(
      name = "com_google_api_grpc_google_common_protos",
      artifact = "com.google.api.grpc:proto-google-common-protos:0.1.9",
      sha1 = "3760f6a6e13c8ab070aa629876cdd183614ee877",
  )

def com_google_code_findbugs_jsr305():
  native.maven_jar(
      name = "com_google_code_findbugs_jsr305",
      artifact = "com.google.code.findbugs:jsr305:3.0.0",
      sha1 = "5871fb60dc68d67da54a663c3fd636a10a532948",
  )

def com_google_code_gson():
  native.maven_jar(
      name = "com_google_code_gson",
      artifact = "com.google.code.gson:gson:jar:2.7",
      sha1 = "751f548c85fa49f330cecbb1875893f971b33c4e",
  )

def com_google_errorprone_error_prone_annotations():
  native.maven_jar(
      name = "com_google_errorprone_error_prone_annotations",
      artifact = "com.google.errorprone:error_prone_annotations:2.0.19",
      sha1 = "c3754a0bdd545b00ddc26884f9e7624f8b6a14de",
  )

def com_google_guava():
  native.maven_jar(
      name = "com_google_guava",
      artifact = "com.google.guava:guava:19.0",
      sha1 = "6ce200f6b23222af3d8abb6b6459e6c44f4bb0e9",
  )

def com_google_instrumentation_api():
  native.maven_jar(
      name = "com_google_instrumentation_api",
      artifact = "com.google.instrumentation:instrumentation-api:0.4.3",
      sha1 = "41614af3429573dc02645d541638929d877945a2",
  )

def com_google_protobuf():
  native.http_archive(
      name = "com_google_protobuf",
      sha256 = "df77b0e60afcd3d90b2654cd305e61ae8ae2e2281b4d6540c7093da4c4245d75",
      strip_prefix = "protobuf-3.3.1",
      urls = ["https://github.com/google/protobuf/archive/v3.3.1.zip"],
  )

def com_google_protobuf_java():
  native.http_archive(
      name = "com_google_protobuf_java",
      sha256 = "df77b0e60afcd3d90b2654cd305e61ae8ae2e2281b4d6540c7093da4c4245d75",
      strip_prefix = "protobuf-3.3.1",
      urls = ["https://github.com/google/protobuf/archive/v3.3.1.zip"],
  )

def com_google_protobuf_nano_protobuf_javanano():
  native.maven_jar(
      name = "com_google_protobuf_nano_protobuf_javanano",
      artifact = "com.google.protobuf.nano:protobuf-javanano:3.0.0-alpha-5",
      sha1 = "357e60f95cebb87c72151e49ba1f570d899734f8",
  )

def com_squareup_okhttp():
  native.maven_jar(
      name = "com_squareup_okhttp",
      artifact = "com.squareup.okhttp:okhttp:2.5.0",
      sha1 = "4de2b4ed3445c37ec1720a7d214712e845a24636",
  )

def com_squareup_okio():
  native.maven_jar(
      name = "com_squareup_okio",
      artifact = "com.squareup.okio:okio:1.6.0",
      sha1 = "98476622f10715998eacf9240d6b479f12c66143",
  )

def io_netty_codec_http2():
  native.maven_jar(
      name = "io_netty_codec_http2",
      artifact = "io.netty:netty-codec-http2:4.1.12.Final",
      sha1 = "5373bd1a7b61f4620a3c421ee999f6142d8aa06d",
  )

def io_netty_buffer():
  native.maven_jar(
      name = "io_netty_buffer",
      artifact = "io.netty:netty-buffer:4.1.12.Final",
      sha1 = "f288fd50a2d2b58bdc51591d584aeaf8b1c10378",
  )

def io_netty_common():
  native.maven_jar(
      name = "io_netty_common",
      artifact = "io.netty:netty-common:4.1.12.Final",
      sha1 = "e98289fb3e657657b69d7c024dd93cf08ac7df70",
  )

def io_netty_transport():
  native.maven_jar(
      name = "io_netty_transport",
      artifact = "io.netty:netty-transport:4.1.12.Final",
      sha1 = "147199f4f78f12f04964a440e7b4acf5cc01bf66",
  )

def io_netty_codec():
  native.maven_jar(
      name = "io_netty_codec",
      artifact = "io.netty:netty-codec:4.1.12.Final",
      sha1 = "5432f42ec70c623be5dd122a9ad358b704e0338f",
  )

def io_netty_codec_socks():
  native.maven_jar(
      name = "io_netty_codec_socks",
      artifact = "io.netty:netty-codec-socks:4.1.12.Final",
      sha1 = "fc491b8a6320f30a468fc16212131b3073ccf703",
  )

def io_netty_codec_http():
  native.maven_jar(
      name = "io_netty_codec_http",
      artifact = "io.netty:netty-codec-http:4.1.12.Final",
      sha1 = "df1561ac7c455faf57c83a45af78771c3d3d0621",
  )

def io_netty_handler():
  native.maven_jar(
      name = "io_netty_handler",
      artifact = "io.netty:netty-handler:4.1.12.Final",
      sha1 = "cce3dcbfa9f0832bc446b003dfb64fd7d8649655",
  )

def io_netty_handler_proxy():
  native.maven_jar(
      name = "io_netty_handler_proxy",
      artifact = "io.netty:netty-handler-proxy:4.1.12.Final",
      sha1 = "abdeea6b5b590d2fb5c8a7786399aa5a99ade9ac",
  )

def io_netty_resolver():
  native.maven_jar(
      name = "io_netty_resolver",
      artifact = "io.netty:netty-resolver:4.1.12.Final",
      sha1 = "fbef9e485ad1aeec284124a357bf78dc3de26f11",
  )

def io_netty_tcnative_boringssl_static():
  native.maven_jar(
      name = "io_netty_tcnative_boringssl_static",
      artifact = "io.netty:netty-tcnative-boringssl-static:2.0.3.Final",
      sha1 = "28d278ac2ae302ae9bdf19958c75b16fefbfae00",
  )
