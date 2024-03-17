# frozen_string_literal: true

RSpec.describe HuaweiCloudStoreGatewaySdk do
  it "test SKD" do
    url = "https://mkt.myhuaweicloud.com/api/mkp-openapi-public/global/v1/license/activate"

    signature = "Signature=77595ad624b6e4e49990b8c4e84bf1c287457fca61069c4e60b9b6765b52053d"
    headers = {
      "x-stage" => "RELEASE",
      "X-Sdk-Date" => "20240317T144237Z",
      "Content-Type" => "application/json"
    }
    result = HuaweiCloudStoreGatewaySdk.sign_request("POST", url, headers, "test", "123", "")
    expect(result[:headers]["Authorization"]).to include(signature)
  end
end
