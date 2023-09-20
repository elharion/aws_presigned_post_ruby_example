# AWS Presigned Post Ruby Example

This is proof of concept for presigned post.

There's no gemfile lock so make sure locally you have installed below gems:
- aws-sdk-s3
- erb

Run command
```bash
PP_AWS_ACCESS_KEY_ID=XXX PP_AWS_SECRET_ACCESS_KEY=YYY PP_BUCKET_NAME=some_bucket_name irb presigned_post.rb
```

As a result it will generate `index.html` file which you can open with browser (File > Open > select index.html) and interact with presigned form.
