resource "aws_s3_bucket" "onebucket" {
   bucket = "demo-s3-with-terraform"
   acl = "private"
   versioning {
      enabled = true
   }
   tags = {
     Name = "Bucket1"
     Environment = "Test"
   }
}