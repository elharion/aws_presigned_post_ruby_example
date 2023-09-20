require "aws-sdk-s3"
require 'erb'

ak_id = ENV['PP_AWS_ACCESS_KEY_ID'] 
sak_id = ENV['PP_AWS_SECRECT_ACCESS_KEY']

credentials = Aws::Credentials.new(ak_id, sak_id)
client = Aws::S3::Client.new(
  region: 'us-west-2',
  credentials: credentials
)

bucket_name = ENV['PP_BUCKET_NAME']
bucket = Aws::S3::Bucket.new(bucket_name, client: client)

@post = bucket.presigned_post(key: '/test/text.txt')
template = File.read('index.html.erb')
index_file = ERB.new(template).result(binding)
File.write('index.html', index_file)