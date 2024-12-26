output "instance_ip_addr" {
  value = aws_instance.Import_testing_tf.private_ip
  #value       = aws_instance.Import_testing_tf.public_ip
  description = "The private & public IP address of the main server instance."
}

output "instance_public_ip_addr" {
  value       = aws_instance.Import_testing_tf.public_ip
  description = "The public IP address of the main server instance."
  sensitive   = true
}

output "bucket_arn" {
  value = data.aws_s3_bucket.data_bucket.arn
}

output "bucket_region" {
  value = data.aws_s3_bucket.data_bucket.region
}

output "bucket_id" {
  value = data.aws_s3_bucket.data_bucket.id
}
