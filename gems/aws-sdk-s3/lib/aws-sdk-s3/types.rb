# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws
  module S3
    module Types

      # Specifies the days since the initiation of an Incomplete Multipart
      # Upload that Lifecycle will wait before permanently removing all parts
      # of the upload.
      # @note When making an API call, pass AbortIncompleteMultipartUpload
      #   data as a hash:
      #
      #       {
      #         days_after_initiation: 1,
      #       }
      # @!attribute [rw] days_after_initiation
      #   Indicates the number of days that must pass since initiation for
      #   Lifecycle to abort an Incomplete Multipart Upload.
      #   @return [Integer]
      class AbortIncompleteMultipartUpload < Struct.new(
        :days_after_initiation)
        include Aws::Structure
      end

      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class AbortMultipartUploadOutput < Struct.new(
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass AbortMultipartUploadRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         upload_id: "MultipartUploadId", # required
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] upload_id
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class AbortMultipartUploadRequest < Struct.new(
        :bucket,
        :key,
        :upload_id,
        :request_payer)
        include Aws::Structure
      end

      # @note When making an API call, pass AccelerateConfiguration
      #   data as a hash:
      #
      #       {
      #         status: "Enabled", # accepts Enabled, Suspended
      #       }
      # @!attribute [rw] status
      #   The accelerate configuration of the bucket.
      #   @return [String]
      class AccelerateConfiguration < Struct.new(
        :status)
        include Aws::Structure
      end

      # @note When making an API call, pass AccessControlPolicy
      #   data as a hash:
      #
      #       {
      #         grants: [
      #           {
      #             grantee: {
      #               display_name: "DisplayName",
      #               email_address: "EmailAddress",
      #               id: "ID",
      #               type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #               uri: "URI",
      #             },
      #             permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
      #           },
      #         ],
      #         owner: {
      #           display_name: "DisplayName",
      #           id: "ID",
      #         },
      #       }
      # @!attribute [rw] grants
      #   A list of grants.
      #   @return [Array<Types::Grant>]
      #
      # @!attribute [rw] owner
      #   @return [Types::Owner]
      class AccessControlPolicy < Struct.new(
        :grants,
        :owner)
        include Aws::Structure
      end

      # @note When making an API call, pass AnalyticsAndOperator
      #   data as a hash:
      #
      #       {
      #         prefix: "Prefix",
      #         tags: [
      #           {
      #             key: "ObjectKey", # required
      #             value: "Value", # required
      #           },
      #         ],
      #       }
      # @!attribute [rw] prefix
      #   The prefix to use when evaluating an AND predicate.
      #   @return [String]
      #
      # @!attribute [rw] tags
      #   The list of tags to use when evaluating an AND predicate.
      #   @return [Array<Types::Tag>]
      class AnalyticsAndOperator < Struct.new(
        :prefix,
        :tags)
        include Aws::Structure
      end

      # @note When making an API call, pass AnalyticsConfiguration
      #   data as a hash:
      #
      #       {
      #         id: "AnalyticsId", # required
      #         filter: {
      #           prefix: "Prefix",
      #           tag: {
      #             key: "ObjectKey", # required
      #             value: "Value", # required
      #           },
      #           and: {
      #             prefix: "Prefix",
      #             tags: [
      #               {
      #                 key: "ObjectKey", # required
      #                 value: "Value", # required
      #               },
      #             ],
      #           },
      #         },
      #         storage_class_analysis: { # required
      #           data_export: {
      #             output_schema_version: "V_1", # required, accepts V_1
      #             destination: { # required
      #               s3_bucket_destination: { # required
      #                 format: "CSV", # required, accepts CSV
      #                 bucket_account_id: "AccountId",
      #                 bucket: "BucketName", # required
      #                 prefix: "Prefix",
      #               },
      #             },
      #           },
      #         },
      #       }
      # @!attribute [rw] id
      #   The identifier used to represent an analytics configuration.
      #   @return [String]
      #
      # @!attribute [rw] filter
      #   The filter used to describe a set of objects for analyses. A filter
      #   must have exactly one prefix, one tag, or one conjunction
      #   (AnalyticsAndOperator). If no filter is provided, all objects will
      #   be considered in any analysis.
      #   @return [Types::AnalyticsFilter]
      #
      # @!attribute [rw] storage_class_analysis
      #   If present, it indicates that data related to access patterns will
      #   be collected and made available to analyze the tradeoffs between
      #   different storage classes.
      #   @return [Types::StorageClassAnalysis]
      class AnalyticsConfiguration < Struct.new(
        :id,
        :filter,
        :storage_class_analysis)
        include Aws::Structure
      end

      # @note When making an API call, pass AnalyticsExportDestination
      #   data as a hash:
      #
      #       {
      #         s3_bucket_destination: { # required
      #           format: "CSV", # required, accepts CSV
      #           bucket_account_id: "AccountId",
      #           bucket: "BucketName", # required
      #           prefix: "Prefix",
      #         },
      #       }
      # @!attribute [rw] s3_bucket_destination
      #   A destination signifying output to an S3 bucket.
      #   @return [Types::AnalyticsS3BucketDestination]
      class AnalyticsExportDestination < Struct.new(
        :s3_bucket_destination)
        include Aws::Structure
      end

      # @note When making an API call, pass AnalyticsFilter
      #   data as a hash:
      #
      #       {
      #         prefix: "Prefix",
      #         tag: {
      #           key: "ObjectKey", # required
      #           value: "Value", # required
      #         },
      #         and: {
      #           prefix: "Prefix",
      #           tags: [
      #             {
      #               key: "ObjectKey", # required
      #               value: "Value", # required
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] prefix
      #   The prefix to use when evaluating an analytics filter.
      #   @return [String]
      #
      # @!attribute [rw] tag
      #   The tag to use when evaluating an analytics filter.
      #   @return [Types::Tag]
      #
      # @!attribute [rw] and
      #   A conjunction (logical AND) of predicates, which is used in
      #   evaluating an analytics filter. The operator must have at least two
      #   predicates.
      #   @return [Types::AnalyticsAndOperator]
      class AnalyticsFilter < Struct.new(
        :prefix,
        :tag,
        :and)
        include Aws::Structure
      end

      # @note When making an API call, pass AnalyticsS3BucketDestination
      #   data as a hash:
      #
      #       {
      #         format: "CSV", # required, accepts CSV
      #         bucket_account_id: "AccountId",
      #         bucket: "BucketName", # required
      #         prefix: "Prefix",
      #       }
      # @!attribute [rw] format
      #   The file format used when exporting data to Amazon S3.
      #   @return [String]
      #
      # @!attribute [rw] bucket_account_id
      #   The account ID that owns the destination bucket. If no account ID is
      #   provided, the owner will not be validated prior to exporting data.
      #   @return [String]
      #
      # @!attribute [rw] bucket
      #   The Amazon resource name (ARN) of the bucket to which data is
      #   exported.
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   The prefix to use when exporting data. The exported data begins with
      #   this prefix.
      #   @return [String]
      class AnalyticsS3BucketDestination < Struct.new(
        :format,
        :bucket_account_id,
        :bucket,
        :prefix)
        include Aws::Structure
      end

      # @!attribute [rw] name
      #   The name of the bucket.
      #   @return [String]
      #
      # @!attribute [rw] creation_date
      #   Date the bucket was created.
      #   @return [Time]
      class Bucket < Struct.new(
        :name,
        :creation_date)
        include Aws::Structure
      end

      # @note When making an API call, pass BucketLifecycleConfiguration
      #   data as a hash:
      #
      #       {
      #         rules: [ # required
      #           {
      #             expiration: {
      #               date: Time.now,
      #               days: 1,
      #               expired_object_delete_marker: false,
      #             },
      #             id: "ID",
      #             prefix: "Prefix",
      #             filter: {
      #               prefix: "Prefix",
      #               tag: {
      #                 key: "ObjectKey", # required
      #                 value: "Value", # required
      #               },
      #               and: {
      #                 prefix: "Prefix",
      #                 tags: [
      #                   {
      #                     key: "ObjectKey", # required
      #                     value: "Value", # required
      #                   },
      #                 ],
      #               },
      #             },
      #             status: "Enabled", # required, accepts Enabled, Disabled
      #             transitions: [
      #               {
      #                 date: Time.now,
      #                 days: 1,
      #                 storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #               },
      #             ],
      #             noncurrent_version_transitions: [
      #               {
      #                 noncurrent_days: 1,
      #                 storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #               },
      #             ],
      #             noncurrent_version_expiration: {
      #               noncurrent_days: 1,
      #             },
      #             abort_incomplete_multipart_upload: {
      #               days_after_initiation: 1,
      #             },
      #           },
      #         ],
      #       }
      # @!attribute [rw] rules
      #   @return [Array<Types::LifecycleRule>]
      class BucketLifecycleConfiguration < Struct.new(
        :rules)
        include Aws::Structure
      end

      # @note When making an API call, pass BucketLoggingStatus
      #   data as a hash:
      #
      #       {
      #         logging_enabled: {
      #           target_bucket: "TargetBucket",
      #           target_grants: [
      #             {
      #               grantee: {
      #                 display_name: "DisplayName",
      #                 email_address: "EmailAddress",
      #                 id: "ID",
      #                 type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #                 uri: "URI",
      #               },
      #               permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE
      #             },
      #           ],
      #           target_prefix: "TargetPrefix",
      #         },
      #       }
      # @!attribute [rw] logging_enabled
      #   @return [Types::LoggingEnabled]
      class BucketLoggingStatus < Struct.new(
        :logging_enabled)
        include Aws::Structure
      end

      # @note When making an API call, pass CORSConfiguration
      #   data as a hash:
      #
      #       {
      #         cors_rules: [ # required
      #           {
      #             allowed_headers: ["AllowedHeader"],
      #             allowed_methods: ["AllowedMethod"], # required
      #             allowed_origins: ["AllowedOrigin"], # required
      #             expose_headers: ["ExposeHeader"],
      #             max_age_seconds: 1,
      #           },
      #         ],
      #       }
      # @!attribute [rw] cors_rules
      #   @return [Array<Types::CORSRule>]
      class CORSConfiguration < Struct.new(
        :cors_rules)
        include Aws::Structure
      end

      # @note When making an API call, pass CORSRule
      #   data as a hash:
      #
      #       {
      #         allowed_headers: ["AllowedHeader"],
      #         allowed_methods: ["AllowedMethod"], # required
      #         allowed_origins: ["AllowedOrigin"], # required
      #         expose_headers: ["ExposeHeader"],
      #         max_age_seconds: 1,
      #       }
      # @!attribute [rw] allowed_headers
      #   Specifies which headers are allowed in a pre-flight OPTIONS request.
      #   @return [Array<String>]
      #
      # @!attribute [rw] allowed_methods
      #   Identifies HTTP methods that the domain/origin specified in the rule
      #   is allowed to execute.
      #   @return [Array<String>]
      #
      # @!attribute [rw] allowed_origins
      #   One or more origins you want customers to be able to access the
      #   bucket from.
      #   @return [Array<String>]
      #
      # @!attribute [rw] expose_headers
      #   One or more headers in the response that you want customers to be
      #   able to access from their applications (for example, from a
      #   JavaScript XMLHttpRequest object).
      #   @return [Array<String>]
      #
      # @!attribute [rw] max_age_seconds
      #   The time in seconds that your browser is to cache the preflight
      #   response for the specified resource.
      #   @return [Integer]
      class CORSRule < Struct.new(
        :allowed_headers,
        :allowed_methods,
        :allowed_origins,
        :expose_headers,
        :max_age_seconds)
        include Aws::Structure
      end

      # @note When making an API call, pass CloudFunctionConfiguration
      #   data as a hash:
      #
      #       {
      #         id: "NotificationId",
      #         event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         cloud_function: "CloudFunction",
      #         invocation_role: "CloudFunctionInvocationRole",
      #       }
      # @!attribute [rw] id
      #   Optional unique identifier for configurations in a notification
      #   configuration. If you don't provide one, Amazon S3 will assign an
      #   ID.
      #   @return [String]
      #
      # @!attribute [rw] event
      #   Bucket event for which to send notifications.
      #   @return [String]
      #
      # @!attribute [rw] events
      #   @return [Array<String>]
      #
      # @!attribute [rw] cloud_function
      #   @return [String]
      #
      # @!attribute [rw] invocation_role
      #   @return [String]
      class CloudFunctionConfiguration < Struct.new(
        :id,
        :event,
        :events,
        :cloud_function,
        :invocation_role)
        include Aws::Structure
      end

      # @!attribute [rw] prefix
      #   @return [String]
      class CommonPrefix < Struct.new(
        :prefix)
        include Aws::Structure
      end

      # @!attribute [rw] location
      #   @return [String]
      #
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] expiration
      #   If the object expiration is configured, this will contain the
      #   expiration date (expiry-date) and rule ID (rule-id). The value of
      #   rule-id is URL encoded.
      #   @return [String]
      #
      # @!attribute [rw] etag
      #   Entity tag of the object.
      #   @return [String]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   Version of the object.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   If present, specifies the ID of the AWS Key Management Service (KMS)
      #   master encryption key that was used for the object.
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class CompleteMultipartUploadOutput < Struct.new(
        :location,
        :bucket,
        :key,
        :expiration,
        :etag,
        :server_side_encryption,
        :version_id,
        :ssekms_key_id,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass CompleteMultipartUploadRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         multipart_upload: {
      #           parts: [
      #             {
      #               etag: "ETag",
      #               part_number: 1,
      #             },
      #           ],
      #         },
      #         upload_id: "MultipartUploadId", # required
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] multipart_upload
      #   @return [Types::CompletedMultipartUpload]
      #
      # @!attribute [rw] upload_id
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class CompleteMultipartUploadRequest < Struct.new(
        :bucket,
        :key,
        :multipart_upload,
        :upload_id,
        :request_payer)
        include Aws::Structure
      end

      # @note When making an API call, pass CompletedMultipartUpload
      #   data as a hash:
      #
      #       {
      #         parts: [
      #           {
      #             etag: "ETag",
      #             part_number: 1,
      #           },
      #         ],
      #       }
      # @!attribute [rw] parts
      #   @return [Array<Types::CompletedPart>]
      class CompletedMultipartUpload < Struct.new(
        :parts)
        include Aws::Structure
      end

      # @note When making an API call, pass CompletedPart
      #   data as a hash:
      #
      #       {
      #         etag: "ETag",
      #         part_number: 1,
      #       }
      # @!attribute [rw] etag
      #   Entity tag returned when the part was uploaded.
      #   @return [String]
      #
      # @!attribute [rw] part_number
      #   Part number that identifies the part. This is a positive integer
      #   between 1 and 10,000.
      #   @return [Integer]
      class CompletedPart < Struct.new(
        :etag,
        :part_number)
        include Aws::Structure
      end

      # @note When making an API call, pass Condition
      #   data as a hash:
      #
      #       {
      #         http_error_code_returned_equals: "HttpErrorCodeReturnedEquals",
      #         key_prefix_equals: "KeyPrefixEquals",
      #       }
      # @!attribute [rw] http_error_code_returned_equals
      #   The HTTP error code when the redirect is applied. In the event of an
      #   error, if the error code equals this value, then the specified
      #   redirect is applied. Required when parent element Condition is
      #   specified and sibling KeyPrefixEquals is not specified. If both are
      #   specified, then both must be true for the redirect to be applied.
      #   @return [String]
      #
      # @!attribute [rw] key_prefix_equals
      #   The object key name prefix when the redirect is applied. For
      #   example, to redirect requests for ExamplePage.html, the key prefix
      #   will be ExamplePage.html. To redirect request for all pages with the
      #   prefix docs/, the key prefix will be /docs, which identifies all
      #   objects in the docs/ folder. Required when the parent element
      #   Condition is specified and sibling HttpErrorCodeReturnedEquals is
      #   not specified. If both conditions are specified, both must be true
      #   for the redirect to be applied.
      #   @return [String]
      class Condition < Struct.new(
        :http_error_code_returned_equals,
        :key_prefix_equals)
        include Aws::Structure
      end

      # @!attribute [rw] copy_object_result
      #   @return [Types::CopyObjectResult]
      #
      # @!attribute [rw] expiration
      #   If the object expiration is configured, the response includes this
      #   header.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_version_id
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   Version ID of the newly created copy.
      #   @return [String]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header confirming the
      #   encryption algorithm used.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header to provide
      #   round trip message integrity verification of the customer-provided
      #   encryption key.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   If present, specifies the ID of the AWS Key Management Service (KMS)
      #   master encryption key that was used for the object.
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class CopyObjectOutput < Struct.new(
        :copy_object_result,
        :expiration,
        :copy_source_version_id,
        :version_id,
        :server_side_encryption,
        :sse_customer_algorithm,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass CopyObjectRequest
      #   data as a hash:
      #
      #       {
      #         acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
      #         bucket: "BucketName", # required
      #         cache_control: "CacheControl",
      #         content_disposition: "ContentDisposition",
      #         content_encoding: "ContentEncoding",
      #         content_language: "ContentLanguage",
      #         content_type: "ContentType",
      #         copy_source: "CopySource", # required
      #         copy_source_if_match: "CopySourceIfMatch",
      #         copy_source_if_modified_since: Time.now,
      #         copy_source_if_none_match: "CopySourceIfNoneMatch",
      #         copy_source_if_unmodified_since: Time.now,
      #         expires: Time.now,
      #         grant_full_control: "GrantFullControl",
      #         grant_read: "GrantRead",
      #         grant_read_acp: "GrantReadACP",
      #         grant_write_acp: "GrantWriteACP",
      #         key: "ObjectKey", # required
      #         metadata: {
      #           "MetadataKey" => "MetadataValue",
      #         },
      #         metadata_directive: "COPY", # accepts COPY, REPLACE
      #         tagging_directive: "COPY", # accepts COPY, REPLACE
      #         server_side_encryption: "AES256", # accepts AES256, aws:kms
      #         storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #         website_redirect_location: "WebsiteRedirectLocation",
      #         sse_customer_algorithm: "SSECustomerAlgorithm",
      #         sse_customer_key: "SSECustomerKey",
      #         sse_customer_key_md5: "SSECustomerKeyMD5",
      #         ssekms_key_id: "SSEKMSKeyId",
      #         copy_source_sse_customer_algorithm: "CopySourceSSECustomerAlgorithm",
      #         copy_source_sse_customer_key: "CopySourceSSECustomerKey",
      #         copy_source_sse_customer_key_md5: "CopySourceSSECustomerKeyMD5",
      #         request_payer: "requester", # accepts requester
      #         tagging: "TaggingHeader",
      #       }
      # @!attribute [rw] acl
      #   The canned ACL to apply to the object.
      #   @return [String]
      #
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] cache_control
      #   Specifies caching behavior along the request/reply chain.
      #   @return [String]
      #
      # @!attribute [rw] content_disposition
      #   Specifies presentational information for the object.
      #   @return [String]
      #
      # @!attribute [rw] content_encoding
      #   Specifies what content encodings have been applied to the object and
      #   thus what decoding mechanisms must be applied to obtain the
      #   media-type referenced by the Content-Type header field.
      #   @return [String]
      #
      # @!attribute [rw] content_language
      #   The language the content is in.
      #   @return [String]
      #
      # @!attribute [rw] content_type
      #   A standard MIME type describing the format of the object data.
      #   @return [String]
      #
      # @!attribute [rw] copy_source
      #   The name of the source bucket and key name of the source object,
      #   separated by a slash (/). Must be URL-encoded.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_if_match
      #   Copies the object if its entity tag (ETag) matches the specified
      #   tag.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_if_modified_since
      #   Copies the object if it has been modified since the specified time.
      #   @return [Time]
      #
      # @!attribute [rw] copy_source_if_none_match
      #   Copies the object if its entity tag (ETag) is different than the
      #   specified ETag.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_if_unmodified_since
      #   Copies the object if it hasn't been modified since the specified
      #   time.
      #   @return [Time]
      #
      # @!attribute [rw] expires
      #   The date and time at which the object is no longer cacheable.
      #   @return [Time]
      #
      # @!attribute [rw] grant_full_control
      #   Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the
      #   object.
      #   @return [String]
      #
      # @!attribute [rw] grant_read
      #   Allows grantee to read the object data and its metadata.
      #   @return [String]
      #
      # @!attribute [rw] grant_read_acp
      #   Allows grantee to read the object ACL.
      #   @return [String]
      #
      # @!attribute [rw] grant_write_acp
      #   Allows grantee to write the ACL for the applicable object.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] metadata
      #   A map of metadata to store with the object in S3.
      #   @return [Hash<String,String>]
      #
      # @!attribute [rw] metadata_directive
      #   Specifies whether the metadata is copied from the source object or
      #   replaced with metadata provided in the request.
      #   @return [String]
      #
      # @!attribute [rw] tagging_directive
      #   Specifies whether the object tag-set are copied from the source
      #   object or replaced with tag-set provided in the request.
      #   @return [String]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] storage_class
      #   The type of storage to use for the object. Defaults to 'STANDARD'.
      #   @return [String]
      #
      # @!attribute [rw] website_redirect_location
      #   If the bucket is configured as a website, redirects requests for
      #   this object to another object in the same bucket or to an external
      #   URL. Amazon S3 stores the value of this header in the object
      #   metadata.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   in encrypting data. This value is used to store the object and then
      #   it is discarded; Amazon does not store the encryption key. The key
      #   must be appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   Specifies the AWS KMS key ID to use for object encryption. All GET
      #   and PUT requests for an object protected by AWS KMS will fail if not
      #   made via SSL or using SigV4. Documentation on configuring any of the
      #   officially supported AWS SDKs and CLI can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
      #   @return [String]
      #
      # @!attribute [rw] copy_source_sse_customer_algorithm
      #   Specifies the algorithm to use when decrypting the source object
      #   (e.g., AES256).
      #   @return [String]
      #
      # @!attribute [rw] copy_source_sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   to decrypt the source object. The encryption key provided in this
      #   header must be one that was used when the source object was created.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      #
      # @!attribute [rw] tagging
      #   The tag-set for the object destination object this value must be
      #   used in conjunction with the TaggingDirective. The tag-set must be
      #   encoded as URL Query parameters
      #   @return [String]
      class CopyObjectRequest < Struct.new(
        :acl,
        :bucket,
        :cache_control,
        :content_disposition,
        :content_encoding,
        :content_language,
        :content_type,
        :copy_source,
        :copy_source_if_match,
        :copy_source_if_modified_since,
        :copy_source_if_none_match,
        :copy_source_if_unmodified_since,
        :expires,
        :grant_full_control,
        :grant_read,
        :grant_read_acp,
        :grant_write_acp,
        :key,
        :metadata,
        :metadata_directive,
        :tagging_directive,
        :server_side_encryption,
        :storage_class,
        :website_redirect_location,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :copy_source_sse_customer_algorithm,
        :copy_source_sse_customer_key,
        :copy_source_sse_customer_key_md5,
        :request_payer,
        :tagging)
        include Aws::Structure
      end

      # @!attribute [rw] etag
      #   @return [String]
      #
      # @!attribute [rw] last_modified
      #   @return [Time]
      class CopyObjectResult < Struct.new(
        :etag,
        :last_modified)
        include Aws::Structure
      end

      # @!attribute [rw] etag
      #   Entity tag of the object.
      #   @return [String]
      #
      # @!attribute [rw] last_modified
      #   Date and time at which the object was uploaded.
      #   @return [Time]
      class CopyPartResult < Struct.new(
        :etag,
        :last_modified)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateBucketConfiguration
      #   data as a hash:
      #
      #       {
      #         location_constraint: "EU", # accepts EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1
      #       }
      # @!attribute [rw] location_constraint
      #   Specifies the region where the bucket will be created. If you don't
      #   specify a region, the bucket will be created in US Standard.
      #   @return [String]
      class CreateBucketConfiguration < Struct.new(
        :location_constraint)
        include Aws::Structure
      end

      # @!attribute [rw] location
      #   @return [String]
      class CreateBucketOutput < Struct.new(
        :location)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateBucketRequest
      #   data as a hash:
      #
      #       {
      #         acl: "private", # accepts private, public-read, public-read-write, authenticated-read
      #         bucket: "BucketName", # required
      #         create_bucket_configuration: {
      #           location_constraint: "EU", # accepts EU, eu-west-1, us-west-1, us-west-2, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, sa-east-1, cn-north-1, eu-central-1
      #         },
      #         grant_full_control: "GrantFullControl",
      #         grant_read: "GrantRead",
      #         grant_read_acp: "GrantReadACP",
      #         grant_write: "GrantWrite",
      #         grant_write_acp: "GrantWriteACP",
      #       }
      # @!attribute [rw] acl
      #   The canned ACL to apply to the bucket.
      #   @return [String]
      #
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] create_bucket_configuration
      #   @return [Types::CreateBucketConfiguration]
      #
      # @!attribute [rw] grant_full_control
      #   Allows grantee the read, write, read ACP, and write ACP permissions
      #   on the bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_read
      #   Allows grantee to list the objects in the bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_read_acp
      #   Allows grantee to read the bucket ACL.
      #   @return [String]
      #
      # @!attribute [rw] grant_write
      #   Allows grantee to create, overwrite, and delete any object in the
      #   bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_write_acp
      #   Allows grantee to write the ACL for the applicable bucket.
      #   @return [String]
      class CreateBucketRequest < Struct.new(
        :acl,
        :bucket,
        :create_bucket_configuration,
        :grant_full_control,
        :grant_read,
        :grant_read_acp,
        :grant_write,
        :grant_write_acp)
        include Aws::Structure
      end

      # @!attribute [rw] abort_date
      #   Date when multipart upload will become eligible for abort operation
      #   by lifecycle.
      #   @return [Time]
      #
      # @!attribute [rw] abort_rule_id
      #   Id of the lifecycle rule that makes a multipart upload eligible for
      #   abort operation.
      #   @return [String]
      #
      # @!attribute [rw] bucket
      #   Name of the bucket to which the multipart upload was initiated.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   Object key for which the multipart upload was initiated.
      #   @return [String]
      #
      # @!attribute [rw] upload_id
      #   ID for the initiated multipart upload.
      #   @return [String]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header confirming the
      #   encryption algorithm used.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header to provide
      #   round trip message integrity verification of the customer-provided
      #   encryption key.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   If present, specifies the ID of the AWS Key Management Service (KMS)
      #   master encryption key that was used for the object.
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class CreateMultipartUploadOutput < Struct.new(
        :abort_date,
        :abort_rule_id,
        :bucket,
        :key,
        :upload_id,
        :server_side_encryption,
        :sse_customer_algorithm,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass CreateMultipartUploadRequest
      #   data as a hash:
      #
      #       {
      #         acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
      #         bucket: "BucketName", # required
      #         cache_control: "CacheControl",
      #         content_disposition: "ContentDisposition",
      #         content_encoding: "ContentEncoding",
      #         content_language: "ContentLanguage",
      #         content_type: "ContentType",
      #         expires: Time.now,
      #         grant_full_control: "GrantFullControl",
      #         grant_read: "GrantRead",
      #         grant_read_acp: "GrantReadACP",
      #         grant_write_acp: "GrantWriteACP",
      #         key: "ObjectKey", # required
      #         metadata: {
      #           "MetadataKey" => "MetadataValue",
      #         },
      #         server_side_encryption: "AES256", # accepts AES256, aws:kms
      #         storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #         website_redirect_location: "WebsiteRedirectLocation",
      #         sse_customer_algorithm: "SSECustomerAlgorithm",
      #         sse_customer_key: "SSECustomerKey",
      #         sse_customer_key_md5: "SSECustomerKeyMD5",
      #         ssekms_key_id: "SSEKMSKeyId",
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] acl
      #   The canned ACL to apply to the object.
      #   @return [String]
      #
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] cache_control
      #   Specifies caching behavior along the request/reply chain.
      #   @return [String]
      #
      # @!attribute [rw] content_disposition
      #   Specifies presentational information for the object.
      #   @return [String]
      #
      # @!attribute [rw] content_encoding
      #   Specifies what content encodings have been applied to the object and
      #   thus what decoding mechanisms must be applied to obtain the
      #   media-type referenced by the Content-Type header field.
      #   @return [String]
      #
      # @!attribute [rw] content_language
      #   The language the content is in.
      #   @return [String]
      #
      # @!attribute [rw] content_type
      #   A standard MIME type describing the format of the object data.
      #   @return [String]
      #
      # @!attribute [rw] expires
      #   The date and time at which the object is no longer cacheable.
      #   @return [Time]
      #
      # @!attribute [rw] grant_full_control
      #   Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the
      #   object.
      #   @return [String]
      #
      # @!attribute [rw] grant_read
      #   Allows grantee to read the object data and its metadata.
      #   @return [String]
      #
      # @!attribute [rw] grant_read_acp
      #   Allows grantee to read the object ACL.
      #   @return [String]
      #
      # @!attribute [rw] grant_write_acp
      #   Allows grantee to write the ACL for the applicable object.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] metadata
      #   A map of metadata to store with the object in S3.
      #   @return [Hash<String,String>]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] storage_class
      #   The type of storage to use for the object. Defaults to 'STANDARD'.
      #   @return [String]
      #
      # @!attribute [rw] website_redirect_location
      #   If the bucket is configured as a website, redirects requests for
      #   this object to another object in the same bucket or to an external
      #   URL. Amazon S3 stores the value of this header in the object
      #   metadata.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   in encrypting data. This value is used to store the object and then
      #   it is discarded; Amazon does not store the encryption key. The key
      #   must be appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   Specifies the AWS KMS key ID to use for object encryption. All GET
      #   and PUT requests for an object protected by AWS KMS will fail if not
      #   made via SSL or using SigV4. Documentation on configuring any of the
      #   officially supported AWS SDKs and CLI can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class CreateMultipartUploadRequest < Struct.new(
        :acl,
        :bucket,
        :cache_control,
        :content_disposition,
        :content_encoding,
        :content_language,
        :content_type,
        :expires,
        :grant_full_control,
        :grant_read,
        :grant_read_acp,
        :grant_write_acp,
        :key,
        :metadata,
        :server_side_encryption,
        :storage_class,
        :website_redirect_location,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :request_payer)
        include Aws::Structure
      end

      # @note When making an API call, pass Delete
      #   data as a hash:
      #
      #       {
      #         objects: [ # required
      #           {
      #             key: "ObjectKey", # required
      #             version_id: "ObjectVersionId",
      #           },
      #         ],
      #         quiet: false,
      #       }
      # @!attribute [rw] objects
      #   @return [Array<Types::ObjectIdentifier>]
      #
      # @!attribute [rw] quiet
      #   Element to enable quiet mode for the request. When you add this
      #   element, you must set its value to true.
      #   @return [Boolean]
      class Delete < Struct.new(
        :objects,
        :quiet)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketAnalyticsConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "AnalyticsId", # required
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket from which an analytics configuration is
      #   deleted.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The identifier used to represent an analytics configuration.
      #   @return [String]
      class DeleteBucketAnalyticsConfigurationRequest < Struct.new(
        :bucket,
        :id)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketCorsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class DeleteBucketCorsRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketInventoryConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "InventoryId", # required
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket containing the inventory configuration to
      #   delete.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The ID used to identify the inventory configuration.
      #   @return [String]
      class DeleteBucketInventoryConfigurationRequest < Struct.new(
        :bucket,
        :id)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketLifecycleRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class DeleteBucketLifecycleRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketMetricsConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "MetricsId", # required
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket containing the metrics configuration to
      #   delete.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The ID used to identify the metrics configuration.
      #   @return [String]
      class DeleteBucketMetricsConfigurationRequest < Struct.new(
        :bucket,
        :id)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketPolicyRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class DeleteBucketPolicyRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketReplicationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class DeleteBucketReplicationRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class DeleteBucketRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketTaggingRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class DeleteBucketTaggingRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteBucketWebsiteRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class DeleteBucketWebsiteRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] owner
      #   @return [Types::Owner]
      #
      # @!attribute [rw] key
      #   The object key.
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   Version ID of an object.
      #   @return [String]
      #
      # @!attribute [rw] is_latest
      #   Specifies whether the object is (true) or is not (false) the latest
      #   version of an object.
      #   @return [Boolean]
      #
      # @!attribute [rw] last_modified
      #   Date and time the object was last modified.
      #   @return [Time]
      class DeleteMarkerEntry < Struct.new(
        :owner,
        :key,
        :version_id,
        :is_latest,
        :last_modified)
        include Aws::Structure
      end

      # @!attribute [rw] delete_marker
      #   Specifies whether the versioned object that was permanently deleted
      #   was (true) or was not (false) a delete marker.
      #   @return [Boolean]
      #
      # @!attribute [rw] version_id
      #   Returns the version ID of the delete marker created as a result of
      #   the DELETE operation.
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class DeleteObjectOutput < Struct.new(
        :delete_marker,
        :version_id,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteObjectRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         mfa: "MFA",
      #         version_id: "ObjectVersionId",
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] mfa
      #   The concatenation of the authentication device's serial number, a
      #   space, and the value that is displayed on your authentication
      #   device.
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   VersionId used to reference a specific version of the object.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class DeleteObjectRequest < Struct.new(
        :bucket,
        :key,
        :mfa,
        :version_id,
        :request_payer)
        include Aws::Structure
      end

      # @!attribute [rw] version_id
      #   The versionId of the object the tag-set was removed from.
      #   @return [String]
      class DeleteObjectTaggingOutput < Struct.new(
        :version_id)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteObjectTaggingRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         version_id: "ObjectVersionId",
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   The versionId of the object that the tag-set will be removed from.
      #   @return [String]
      class DeleteObjectTaggingRequest < Struct.new(
        :bucket,
        :key,
        :version_id)
        include Aws::Structure
      end

      # @!attribute [rw] deleted
      #   @return [Array<Types::DeletedObject>]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      #
      # @!attribute [rw] errors
      #   @return [Array<Types::Error>]
      class DeleteObjectsOutput < Struct.new(
        :deleted,
        :request_charged,
        :errors)
        include Aws::Structure
      end

      # @note When making an API call, pass DeleteObjectsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         delete: { # required
      #           objects: [ # required
      #             {
      #               key: "ObjectKey", # required
      #               version_id: "ObjectVersionId",
      #             },
      #           ],
      #           quiet: false,
      #         },
      #         mfa: "MFA",
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] delete
      #   @return [Types::Delete]
      #
      # @!attribute [rw] mfa
      #   The concatenation of the authentication device's serial number, a
      #   space, and the value that is displayed on your authentication
      #   device.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class DeleteObjectsRequest < Struct.new(
        :bucket,
        :delete,
        :mfa,
        :request_payer)
        include Aws::Structure
      end

      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   @return [String]
      #
      # @!attribute [rw] delete_marker
      #   @return [Boolean]
      #
      # @!attribute [rw] delete_marker_version_id
      #   @return [String]
      class DeletedObject < Struct.new(
        :key,
        :version_id,
        :delete_marker,
        :delete_marker_version_id)
        include Aws::Structure
      end

      # @note When making an API call, pass Destination
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #       }
      # @!attribute [rw] bucket
      #   Amazon resource name (ARN) of the bucket where you want Amazon S3 to
      #   store replicas of the object identified by the rule.
      #   @return [String]
      #
      # @!attribute [rw] storage_class
      #   The class of storage used to store the object.
      #   @return [String]
      class Destination < Struct.new(
        :bucket,
        :storage_class)
        include Aws::Structure
      end

      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   @return [String]
      #
      # @!attribute [rw] code
      #   @return [String]
      #
      # @!attribute [rw] message
      #   @return [String]
      class Error < Struct.new(
        :key,
        :version_id,
        :code,
        :message)
        include Aws::Structure
      end

      # @note When making an API call, pass ErrorDocument
      #   data as a hash:
      #
      #       {
      #         key: "ObjectKey", # required
      #       }
      # @!attribute [rw] key
      #   The object key name to use when a 4XX class error occurs.
      #   @return [String]
      class ErrorDocument < Struct.new(
        :key)
        include Aws::Structure
      end

      # Container for key value pair that defines the criteria for the filter
      # rule.
      # @note When making an API call, pass FilterRule
      #   data as a hash:
      #
      #       {
      #         name: "prefix", # accepts prefix, suffix
      #         value: "FilterRuleValue",
      #       }
      # @!attribute [rw] name
      #   Object key name prefix or suffix identifying one or more objects to
      #   which the filtering rule applies. Maximum prefix length can be up to
      #   1,024 characters. Overlapping prefixes and suffixes are not
      #   supported. For more information, go to [Configuring Event
      #   Notifications][1] in the Amazon Simple Storage Service Developer
      #   Guide.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html
      #   @return [String]
      #
      # @!attribute [rw] value
      #   @return [String]
      class FilterRule < Struct.new(
        :name,
        :value)
        include Aws::Structure
      end

      # @!attribute [rw] status
      #   The accelerate configuration of the bucket.
      #   @return [String]
      class GetBucketAccelerateConfigurationOutput < Struct.new(
        :status)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketAccelerateConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   Name of the bucket for which the accelerate configuration is
      #   retrieved.
      #   @return [String]
      class GetBucketAccelerateConfigurationRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] owner
      #   @return [Types::Owner]
      #
      # @!attribute [rw] grants
      #   A list of grants.
      #   @return [Array<Types::Grant>]
      class GetBucketAclOutput < Struct.new(
        :owner,
        :grants)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketAclRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketAclRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] analytics_configuration
      #   The configuration and any analyses for the analytics filter.
      #   @return [Types::AnalyticsConfiguration]
      class GetBucketAnalyticsConfigurationOutput < Struct.new(
        :analytics_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketAnalyticsConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "AnalyticsId", # required
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket from which an analytics configuration is
      #   retrieved.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The identifier used to represent an analytics configuration.
      #   @return [String]
      class GetBucketAnalyticsConfigurationRequest < Struct.new(
        :bucket,
        :id)
        include Aws::Structure
      end

      # @!attribute [rw] cors_rules
      #   @return [Array<Types::CORSRule>]
      class GetBucketCorsOutput < Struct.new(
        :cors_rules)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketCorsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketCorsRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] inventory_configuration
      #   Specifies the inventory configuration.
      #   @return [Types::InventoryConfiguration]
      class GetBucketInventoryConfigurationOutput < Struct.new(
        :inventory_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketInventoryConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "InventoryId", # required
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket containing the inventory configuration to
      #   retrieve.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The ID used to identify the inventory configuration.
      #   @return [String]
      class GetBucketInventoryConfigurationRequest < Struct.new(
        :bucket,
        :id)
        include Aws::Structure
      end

      # @!attribute [rw] rules
      #   @return [Array<Types::LifecycleRule>]
      class GetBucketLifecycleConfigurationOutput < Struct.new(
        :rules)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketLifecycleConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketLifecycleConfigurationRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] rules
      #   @return [Array<Types::Rule>]
      class GetBucketLifecycleOutput < Struct.new(
        :rules)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketLifecycleRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketLifecycleRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] location_constraint
      #   @return [String]
      class GetBucketLocationOutput < Struct.new(
        :location_constraint)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketLocationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketLocationRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] logging_enabled
      #   @return [Types::LoggingEnabled]
      class GetBucketLoggingOutput < Struct.new(
        :logging_enabled)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketLoggingRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketLoggingRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] metrics_configuration
      #   Specifies the metrics configuration.
      #   @return [Types::MetricsConfiguration]
      class GetBucketMetricsConfigurationOutput < Struct.new(
        :metrics_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketMetricsConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "MetricsId", # required
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket containing the metrics configuration to
      #   retrieve.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The ID used to identify the metrics configuration.
      #   @return [String]
      class GetBucketMetricsConfigurationRequest < Struct.new(
        :bucket,
        :id)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketNotificationConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   Name of the bucket to get the notification configuration for.
      #   @return [String]
      class GetBucketNotificationConfigurationRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] policy
      #   The bucket policy as a JSON document.
      #   @return [String]
      class GetBucketPolicyOutput < Struct.new(
        :policy)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketPolicyRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketPolicyRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] replication_configuration
      #   Container for replication rules. You can add as many as 1,000 rules.
      #   Total replication configuration size can be up to 2 MB.
      #   @return [Types::ReplicationConfiguration]
      class GetBucketReplicationOutput < Struct.new(
        :replication_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketReplicationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketReplicationRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] payer
      #   Specifies who pays for the download and request fees.
      #   @return [String]
      class GetBucketRequestPaymentOutput < Struct.new(
        :payer)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketRequestPaymentRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketRequestPaymentRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] tag_set
      #   @return [Array<Types::Tag>]
      class GetBucketTaggingOutput < Struct.new(
        :tag_set)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketTaggingRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketTaggingRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] status
      #   The versioning state of the bucket.
      #   @return [String]
      #
      # @!attribute [rw] mfa_delete
      #   Specifies whether MFA delete is enabled in the bucket versioning
      #   configuration. This element is only returned if the bucket has been
      #   configured with MFA delete. If the bucket has never been so
      #   configured, this element is not returned.
      #   @return [String]
      class GetBucketVersioningOutput < Struct.new(
        :status,
        :mfa_delete)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketVersioningRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketVersioningRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] redirect_all_requests_to
      #   @return [Types::RedirectAllRequestsTo]
      #
      # @!attribute [rw] index_document
      #   @return [Types::IndexDocument]
      #
      # @!attribute [rw] error_document
      #   @return [Types::ErrorDocument]
      #
      # @!attribute [rw] routing_rules
      #   @return [Array<Types::RoutingRule>]
      class GetBucketWebsiteOutput < Struct.new(
        :redirect_all_requests_to,
        :index_document,
        :error_document,
        :routing_rules)
        include Aws::Structure
      end

      # @note When making an API call, pass GetBucketWebsiteRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class GetBucketWebsiteRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] owner
      #   @return [Types::Owner]
      #
      # @!attribute [rw] grants
      #   A list of grants.
      #   @return [Array<Types::Grant>]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class GetObjectAclOutput < Struct.new(
        :owner,
        :grants,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass GetObjectAclRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         version_id: "ObjectVersionId",
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   VersionId used to reference a specific version of the object.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class GetObjectAclRequest < Struct.new(
        :bucket,
        :key,
        :version_id,
        :request_payer)
        include Aws::Structure
      end

      # @!attribute [rw] body
      #   Object data.
      #   @return [IO]
      #
      # @!attribute [rw] delete_marker
      #   Specifies whether the object retrieved was (true) or was not (false)
      #   a Delete Marker. If false, this response header does not appear in
      #   the response.
      #   @return [Boolean]
      #
      # @!attribute [rw] accept_ranges
      #   @return [String]
      #
      # @!attribute [rw] expiration
      #   If the object expiration is configured (see PUT Bucket lifecycle),
      #   the response includes this header. It includes the expiry-date and
      #   rule-id key value pairs providing object expiration information. The
      #   value of the rule-id is URL encoded.
      #   @return [String]
      #
      # @!attribute [rw] restore
      #   Provides information about object restoration operation and
      #   expiration time of the restored object copy.
      #   @return [String]
      #
      # @!attribute [rw] last_modified
      #   Last modified date of the object
      #   @return [Time]
      #
      # @!attribute [rw] content_length
      #   Size of the body in bytes.
      #   @return [Integer]
      #
      # @!attribute [rw] etag
      #   An ETag is an opaque identifier assigned by a web server to a
      #   specific version of a resource found at a URL
      #   @return [String]
      #
      # @!attribute [rw] missing_meta
      #   This is set to the number of metadata entries not returned in
      #   x-amz-meta headers. This can happen if you create metadata using an
      #   API like SOAP that supports more flexible metadata than the REST
      #   API. For example, using SOAP, you can create metadata whose values
      #   are not legal HTTP headers.
      #   @return [Integer]
      #
      # @!attribute [rw] version_id
      #   Version of the object.
      #   @return [String]
      #
      # @!attribute [rw] cache_control
      #   Specifies caching behavior along the request/reply chain.
      #   @return [String]
      #
      # @!attribute [rw] content_disposition
      #   Specifies presentational information for the object.
      #   @return [String]
      #
      # @!attribute [rw] content_encoding
      #   Specifies what content encodings have been applied to the object and
      #   thus what decoding mechanisms must be applied to obtain the
      #   media-type referenced by the Content-Type header field.
      #   @return [String]
      #
      # @!attribute [rw] content_language
      #   The language the content is in.
      #   @return [String]
      #
      # @!attribute [rw] content_range
      #   The portion of the object returned in the response.
      #   @return [String]
      #
      # @!attribute [rw] content_type
      #   A standard MIME type describing the format of the object data.
      #   @return [String]
      #
      # @!attribute [rw] expires
      #   The date and time at which the object is no longer cacheable.
      #   @return [Time]
      #
      # @!attribute [rw] expires_string
      #   @return [String]
      #
      # @!attribute [rw] website_redirect_location
      #   If the bucket is configured as a website, redirects requests for
      #   this object to another object in the same bucket or to an external
      #   URL. Amazon S3 stores the value of this header in the object
      #   metadata.
      #   @return [String]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] metadata
      #   A map of metadata to store with the object in S3.
      #   @return [Hash<String,String>]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header confirming the
      #   encryption algorithm used.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header to provide
      #   round trip message integrity verification of the customer-provided
      #   encryption key.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   If present, specifies the ID of the AWS Key Management Service (KMS)
      #   master encryption key that was used for the object.
      #   @return [String]
      #
      # @!attribute [rw] storage_class
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      #
      # @!attribute [rw] replication_status
      #   @return [String]
      #
      # @!attribute [rw] parts_count
      #   The count of parts this object has.
      #   @return [Integer]
      #
      # @!attribute [rw] tag_count
      #   The number of tags, if any, on the object.
      #   @return [Integer]
      class GetObjectOutput < Struct.new(
        :body,
        :delete_marker,
        :accept_ranges,
        :expiration,
        :restore,
        :last_modified,
        :content_length,
        :etag,
        :missing_meta,
        :version_id,
        :cache_control,
        :content_disposition,
        :content_encoding,
        :content_language,
        :content_range,
        :content_type,
        :expires,
        :expires_string,
        :website_redirect_location,
        :server_side_encryption,
        :metadata,
        :sse_customer_algorithm,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :storage_class,
        :request_charged,
        :replication_status,
        :parts_count,
        :tag_count)
        include Aws::Structure
      end

      # @note When making an API call, pass GetObjectRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         if_match: "IfMatch",
      #         if_modified_since: Time.now,
      #         if_none_match: "IfNoneMatch",
      #         if_unmodified_since: Time.now,
      #         key: "ObjectKey", # required
      #         range: "Range",
      #         response_cache_control: "ResponseCacheControl",
      #         response_content_disposition: "ResponseContentDisposition",
      #         response_content_encoding: "ResponseContentEncoding",
      #         response_content_language: "ResponseContentLanguage",
      #         response_content_type: "ResponseContentType",
      #         response_expires: Time.now,
      #         version_id: "ObjectVersionId",
      #         sse_customer_algorithm: "SSECustomerAlgorithm",
      #         sse_customer_key: "SSECustomerKey",
      #         sse_customer_key_md5: "SSECustomerKeyMD5",
      #         request_payer: "requester", # accepts requester
      #         part_number: 1,
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] if_match
      #   Return the object only if its entity tag (ETag) is the same as the
      #   one specified, otherwise return a 412 (precondition failed).
      #   @return [String]
      #
      # @!attribute [rw] if_modified_since
      #   Return the object only if it has been modified since the specified
      #   time, otherwise return a 304 (not modified).
      #   @return [Time]
      #
      # @!attribute [rw] if_none_match
      #   Return the object only if its entity tag (ETag) is different from
      #   the one specified, otherwise return a 304 (not modified).
      #   @return [String]
      #
      # @!attribute [rw] if_unmodified_since
      #   Return the object only if it has not been modified since the
      #   specified time, otherwise return a 412 (precondition failed).
      #   @return [Time]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] range
      #   Downloads the specified range bytes of an object. For more
      #   information about the HTTP Range header, go to
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
      #   @return [String]
      #
      # @!attribute [rw] response_cache_control
      #   Sets the Cache-Control header of the response.
      #   @return [String]
      #
      # @!attribute [rw] response_content_disposition
      #   Sets the Content-Disposition header of the response
      #   @return [String]
      #
      # @!attribute [rw] response_content_encoding
      #   Sets the Content-Encoding header of the response.
      #   @return [String]
      #
      # @!attribute [rw] response_content_language
      #   Sets the Content-Language header of the response.
      #   @return [String]
      #
      # @!attribute [rw] response_content_type
      #   Sets the Content-Type header of the response.
      #   @return [String]
      #
      # @!attribute [rw] response_expires
      #   Sets the Expires header of the response.
      #   @return [Time]
      #
      # @!attribute [rw] version_id
      #   VersionId used to reference a specific version of the object.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   in encrypting data. This value is used to store the object and then
      #   it is discarded; Amazon does not store the encryption key. The key
      #   must be appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      #
      # @!attribute [rw] part_number
      #   Part number of the object being read. This is a positive integer
      #   between 1 and 10,000. Effectively performs a 'ranged' GET request
      #   for the part specified. Useful for downloading just a part of an
      #   object.
      #   @return [Integer]
      class GetObjectRequest < Struct.new(
        :bucket,
        :if_match,
        :if_modified_since,
        :if_none_match,
        :if_unmodified_since,
        :key,
        :range,
        :response_cache_control,
        :response_content_disposition,
        :response_content_encoding,
        :response_content_language,
        :response_content_type,
        :response_expires,
        :version_id,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5,
        :request_payer,
        :part_number)
        include Aws::Structure
      end

      # @!attribute [rw] version_id
      #   @return [String]
      #
      # @!attribute [rw] tag_set
      #   @return [Array<Types::Tag>]
      class GetObjectTaggingOutput < Struct.new(
        :version_id,
        :tag_set)
        include Aws::Structure
      end

      # @note When making an API call, pass GetObjectTaggingRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         version_id: "ObjectVersionId",
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   @return [String]
      class GetObjectTaggingRequest < Struct.new(
        :bucket,
        :key,
        :version_id)
        include Aws::Structure
      end

      # @!attribute [rw] body
      #   @return [IO]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class GetObjectTorrentOutput < Struct.new(
        :body,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass GetObjectTorrentRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class GetObjectTorrentRequest < Struct.new(
        :bucket,
        :key,
        :request_payer)
        include Aws::Structure
      end

      # @note When making an API call, pass GlacierJobParameters
      #   data as a hash:
      #
      #       {
      #         tier: "Standard", # required, accepts Standard, Bulk, Expedited
      #       }
      # @!attribute [rw] tier
      #   Glacier retrieval tier at which the restore will be processed.
      #   @return [String]
      class GlacierJobParameters < Struct.new(
        :tier)
        include Aws::Structure
      end

      # @note When making an API call, pass Grant
      #   data as a hash:
      #
      #       {
      #         grantee: {
      #           display_name: "DisplayName",
      #           email_address: "EmailAddress",
      #           id: "ID",
      #           type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #           uri: "URI",
      #         },
      #         permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
      #       }
      # @!attribute [rw] grantee
      #   @return [Types::Grantee]
      #
      # @!attribute [rw] permission
      #   Specifies the permission given to the grantee.
      #   @return [String]
      class Grant < Struct.new(
        :grantee,
        :permission)
        include Aws::Structure
      end

      # @note When making an API call, pass Grantee
      #   data as a hash:
      #
      #       {
      #         display_name: "DisplayName",
      #         email_address: "EmailAddress",
      #         id: "ID",
      #         type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #         uri: "URI",
      #       }
      # @!attribute [rw] display_name
      #   Screen name of the grantee.
      #   @return [String]
      #
      # @!attribute [rw] email_address
      #   Email address of the grantee.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The canonical user ID of the grantee.
      #   @return [String]
      #
      # @!attribute [rw] type
      #   Type of grantee
      #   @return [String]
      #
      # @!attribute [rw] uri
      #   URI of the grantee group.
      #   @return [String]
      class Grantee < Struct.new(
        :display_name,
        :email_address,
        :id,
        :type,
        :uri)
        include Aws::Structure
      end

      # @note When making an API call, pass HeadBucketRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      class HeadBucketRequest < Struct.new(
        :bucket)
        include Aws::Structure
      end

      # @!attribute [rw] delete_marker
      #   Specifies whether the object retrieved was (true) or was not (false)
      #   a Delete Marker. If false, this response header does not appear in
      #   the response.
      #   @return [Boolean]
      #
      # @!attribute [rw] accept_ranges
      #   @return [String]
      #
      # @!attribute [rw] expiration
      #   If the object expiration is configured (see PUT Bucket lifecycle),
      #   the response includes this header. It includes the expiry-date and
      #   rule-id key value pairs providing object expiration information. The
      #   value of the rule-id is URL encoded.
      #   @return [String]
      #
      # @!attribute [rw] restore
      #   Provides information about object restoration operation and
      #   expiration time of the restored object copy.
      #   @return [String]
      #
      # @!attribute [rw] last_modified
      #   Last modified date of the object
      #   @return [Time]
      #
      # @!attribute [rw] content_length
      #   Size of the body in bytes.
      #   @return [Integer]
      #
      # @!attribute [rw] etag
      #   An ETag is an opaque identifier assigned by a web server to a
      #   specific version of a resource found at a URL
      #   @return [String]
      #
      # @!attribute [rw] missing_meta
      #   This is set to the number of metadata entries not returned in
      #   x-amz-meta headers. This can happen if you create metadata using an
      #   API like SOAP that supports more flexible metadata than the REST
      #   API. For example, using SOAP, you can create metadata whose values
      #   are not legal HTTP headers.
      #   @return [Integer]
      #
      # @!attribute [rw] version_id
      #   Version of the object.
      #   @return [String]
      #
      # @!attribute [rw] cache_control
      #   Specifies caching behavior along the request/reply chain.
      #   @return [String]
      #
      # @!attribute [rw] content_disposition
      #   Specifies presentational information for the object.
      #   @return [String]
      #
      # @!attribute [rw] content_encoding
      #   Specifies what content encodings have been applied to the object and
      #   thus what decoding mechanisms must be applied to obtain the
      #   media-type referenced by the Content-Type header field.
      #   @return [String]
      #
      # @!attribute [rw] content_language
      #   The language the content is in.
      #   @return [String]
      #
      # @!attribute [rw] content_type
      #   A standard MIME type describing the format of the object data.
      #   @return [String]
      #
      # @!attribute [rw] expires
      #   The date and time at which the object is no longer cacheable.
      #   @return [Time]
      #
      # @!attribute [rw] expires_string
      #   @return [String]
      #
      # @!attribute [rw] website_redirect_location
      #   If the bucket is configured as a website, redirects requests for
      #   this object to another object in the same bucket or to an external
      #   URL. Amazon S3 stores the value of this header in the object
      #   metadata.
      #   @return [String]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] metadata
      #   A map of metadata to store with the object in S3.
      #   @return [Hash<String,String>]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header confirming the
      #   encryption algorithm used.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header to provide
      #   round trip message integrity verification of the customer-provided
      #   encryption key.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   If present, specifies the ID of the AWS Key Management Service (KMS)
      #   master encryption key that was used for the object.
      #   @return [String]
      #
      # @!attribute [rw] storage_class
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      #
      # @!attribute [rw] replication_status
      #   @return [String]
      #
      # @!attribute [rw] parts_count
      #   The count of parts this object has.
      #   @return [Integer]
      class HeadObjectOutput < Struct.new(
        :delete_marker,
        :accept_ranges,
        :expiration,
        :restore,
        :last_modified,
        :content_length,
        :etag,
        :missing_meta,
        :version_id,
        :cache_control,
        :content_disposition,
        :content_encoding,
        :content_language,
        :content_type,
        :expires,
        :expires_string,
        :website_redirect_location,
        :server_side_encryption,
        :metadata,
        :sse_customer_algorithm,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :storage_class,
        :request_charged,
        :replication_status,
        :parts_count)
        include Aws::Structure
      end

      # @note When making an API call, pass HeadObjectRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         if_match: "IfMatch",
      #         if_modified_since: Time.now,
      #         if_none_match: "IfNoneMatch",
      #         if_unmodified_since: Time.now,
      #         key: "ObjectKey", # required
      #         range: "Range",
      #         version_id: "ObjectVersionId",
      #         sse_customer_algorithm: "SSECustomerAlgorithm",
      #         sse_customer_key: "SSECustomerKey",
      #         sse_customer_key_md5: "SSECustomerKeyMD5",
      #         request_payer: "requester", # accepts requester
      #         part_number: 1,
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] if_match
      #   Return the object only if its entity tag (ETag) is the same as the
      #   one specified, otherwise return a 412 (precondition failed).
      #   @return [String]
      #
      # @!attribute [rw] if_modified_since
      #   Return the object only if it has been modified since the specified
      #   time, otherwise return a 304 (not modified).
      #   @return [Time]
      #
      # @!attribute [rw] if_none_match
      #   Return the object only if its entity tag (ETag) is different from
      #   the one specified, otherwise return a 304 (not modified).
      #   @return [String]
      #
      # @!attribute [rw] if_unmodified_since
      #   Return the object only if it has not been modified since the
      #   specified time, otherwise return a 412 (precondition failed).
      #   @return [Time]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] range
      #   Downloads the specified range bytes of an object. For more
      #   information about the HTTP Range header, go to
      #   http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   VersionId used to reference a specific version of the object.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   in encrypting data. This value is used to store the object and then
      #   it is discarded; Amazon does not store the encryption key. The key
      #   must be appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      #
      # @!attribute [rw] part_number
      #   Part number of the object being read. This is a positive integer
      #   between 1 and 10,000. Effectively performs a 'ranged' HEAD request
      #   for the part specified. Useful querying about the size of the part
      #   and the number of parts in this object.
      #   @return [Integer]
      class HeadObjectRequest < Struct.new(
        :bucket,
        :if_match,
        :if_modified_since,
        :if_none_match,
        :if_unmodified_since,
        :key,
        :range,
        :version_id,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5,
        :request_payer,
        :part_number)
        include Aws::Structure
      end

      # @note When making an API call, pass IndexDocument
      #   data as a hash:
      #
      #       {
      #         suffix: "Suffix", # required
      #       }
      # @!attribute [rw] suffix
      #   A suffix that is appended to a request that is for a directory on
      #   the website endpoint (e.g. if the suffix is index.html and you make
      #   a request to samplebucket/images/ the data that is returned will be
      #   for the object with the key name images/index.html) The suffix must
      #   not be empty and must not include a slash character.
      #   @return [String]
      class IndexDocument < Struct.new(
        :suffix)
        include Aws::Structure
      end

      # @!attribute [rw] id
      #   If the principal is an AWS account, it provides the Canonical User
      #   ID. If the principal is an IAM User, it provides a user ARN value.
      #   @return [String]
      #
      # @!attribute [rw] display_name
      #   Name of the Principal.
      #   @return [String]
      class Initiator < Struct.new(
        :id,
        :display_name)
        include Aws::Structure
      end

      # @note When making an API call, pass InventoryConfiguration
      #   data as a hash:
      #
      #       {
      #         destination: { # required
      #           s3_bucket_destination: { # required
      #             account_id: "AccountId",
      #             bucket: "BucketName", # required
      #             format: "CSV", # required, accepts CSV
      #             prefix: "Prefix",
      #           },
      #         },
      #         is_enabled: false, # required
      #         filter: {
      #           prefix: "Prefix", # required
      #         },
      #         id: "InventoryId", # required
      #         included_object_versions: "All", # required, accepts All, Current
      #         optional_fields: ["Size"], # accepts Size, LastModifiedDate, StorageClass, ETag, IsMultipartUploaded, ReplicationStatus
      #         schedule: { # required
      #           frequency: "Daily", # required, accepts Daily, Weekly
      #         },
      #       }
      # @!attribute [rw] destination
      #   Contains information about where to publish the inventory results.
      #   @return [Types::InventoryDestination]
      #
      # @!attribute [rw] is_enabled
      #   Specifies whether the inventory is enabled or disabled.
      #   @return [Boolean]
      #
      # @!attribute [rw] filter
      #   Specifies an inventory filter. The inventory only includes objects
      #   that meet the filter's criteria.
      #   @return [Types::InventoryFilter]
      #
      # @!attribute [rw] id
      #   The ID used to identify the inventory configuration.
      #   @return [String]
      #
      # @!attribute [rw] included_object_versions
      #   Specifies which object version(s) to included in the inventory
      #   results.
      #   @return [String]
      #
      # @!attribute [rw] optional_fields
      #   Contains the optional fields that are included in the inventory
      #   results.
      #   @return [Array<String>]
      #
      # @!attribute [rw] schedule
      #   Specifies the schedule for generating inventory results.
      #   @return [Types::InventorySchedule]
      class InventoryConfiguration < Struct.new(
        :destination,
        :is_enabled,
        :filter,
        :id,
        :included_object_versions,
        :optional_fields,
        :schedule)
        include Aws::Structure
      end

      # @note When making an API call, pass InventoryDestination
      #   data as a hash:
      #
      #       {
      #         s3_bucket_destination: { # required
      #           account_id: "AccountId",
      #           bucket: "BucketName", # required
      #           format: "CSV", # required, accepts CSV
      #           prefix: "Prefix",
      #         },
      #       }
      # @!attribute [rw] s3_bucket_destination
      #   Contains the bucket name, file format, bucket owner (optional), and
      #   prefix (optional) where inventory results are published.
      #   @return [Types::InventoryS3BucketDestination]
      class InventoryDestination < Struct.new(
        :s3_bucket_destination)
        include Aws::Structure
      end

      # @note When making an API call, pass InventoryFilter
      #   data as a hash:
      #
      #       {
      #         prefix: "Prefix", # required
      #       }
      # @!attribute [rw] prefix
      #   The prefix that an object must have to be included in the inventory
      #   results.
      #   @return [String]
      class InventoryFilter < Struct.new(
        :prefix)
        include Aws::Structure
      end

      # @note When making an API call, pass InventoryS3BucketDestination
      #   data as a hash:
      #
      #       {
      #         account_id: "AccountId",
      #         bucket: "BucketName", # required
      #         format: "CSV", # required, accepts CSV
      #         prefix: "Prefix",
      #       }
      # @!attribute [rw] account_id
      #   The ID of the account that owns the destination bucket.
      #   @return [String]
      #
      # @!attribute [rw] bucket
      #   The Amazon resource name (ARN) of the bucket where inventory results
      #   will be published.
      #   @return [String]
      #
      # @!attribute [rw] format
      #   Specifies the output format of the inventory results.
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   The prefix that is prepended to all inventory results.
      #   @return [String]
      class InventoryS3BucketDestination < Struct.new(
        :account_id,
        :bucket,
        :format,
        :prefix)
        include Aws::Structure
      end

      # @note When making an API call, pass InventorySchedule
      #   data as a hash:
      #
      #       {
      #         frequency: "Daily", # required, accepts Daily, Weekly
      #       }
      # @!attribute [rw] frequency
      #   Specifies how frequently inventory results are produced.
      #   @return [String]
      class InventorySchedule < Struct.new(
        :frequency)
        include Aws::Structure
      end

      # Container for specifying the AWS Lambda notification configuration.
      # @note When making an API call, pass LambdaFunctionConfiguration
      #   data as a hash:
      #
      #       {
      #         id: "NotificationId",
      #         lambda_function_arn: "LambdaFunctionArn", # required
      #         events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         filter: {
      #           key: {
      #             filter_rules: [
      #               {
      #                 name: "prefix", # accepts prefix, suffix
      #                 value: "FilterRuleValue",
      #               },
      #             ],
      #           },
      #         },
      #       }
      # @!attribute [rw] id
      #   Optional unique identifier for configurations in a notification
      #   configuration. If you don't provide one, Amazon S3 will assign an
      #   ID.
      #   @return [String]
      #
      # @!attribute [rw] lambda_function_arn
      #   Lambda cloud function ARN that Amazon S3 can invoke when it detects
      #   events of the specified type.
      #   @return [String]
      #
      # @!attribute [rw] events
      #   @return [Array<String>]
      #
      # @!attribute [rw] filter
      #   Container for object key name filtering rules. For information about
      #   key name filtering, go to [Configuring Event Notifications][1] in
      #   the Amazon Simple Storage Service Developer Guide.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html
      #   @return [Types::NotificationConfigurationFilter]
      class LambdaFunctionConfiguration < Struct.new(
        :id,
        :lambda_function_arn,
        :events,
        :filter)
        include Aws::Structure
      end

      # @note When making an API call, pass LifecycleConfiguration
      #   data as a hash:
      #
      #       {
      #         rules: [ # required
      #           {
      #             expiration: {
      #               date: Time.now,
      #               days: 1,
      #               expired_object_delete_marker: false,
      #             },
      #             id: "ID",
      #             prefix: "Prefix", # required
      #             status: "Enabled", # required, accepts Enabled, Disabled
      #             transition: {
      #               date: Time.now,
      #               days: 1,
      #               storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #             },
      #             noncurrent_version_transition: {
      #               noncurrent_days: 1,
      #               storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #             },
      #             noncurrent_version_expiration: {
      #               noncurrent_days: 1,
      #             },
      #             abort_incomplete_multipart_upload: {
      #               days_after_initiation: 1,
      #             },
      #           },
      #         ],
      #       }
      # @!attribute [rw] rules
      #   @return [Array<Types::Rule>]
      class LifecycleConfiguration < Struct.new(
        :rules)
        include Aws::Structure
      end

      # @note When making an API call, pass LifecycleExpiration
      #   data as a hash:
      #
      #       {
      #         date: Time.now,
      #         days: 1,
      #         expired_object_delete_marker: false,
      #       }
      # @!attribute [rw] date
      #   Indicates at what date the object is to be moved or deleted. Should
      #   be in GMT ISO 8601 Format.
      #   @return [Time]
      #
      # @!attribute [rw] days
      #   Indicates the lifetime, in days, of the objects that are subject to
      #   the rule. The value must be a non-zero positive integer.
      #   @return [Integer]
      #
      # @!attribute [rw] expired_object_delete_marker
      #   Indicates whether Amazon S3 will remove a delete marker with no
      #   noncurrent versions. If set to true, the delete marker will be
      #   expired; if set to false the policy takes no action. This cannot be
      #   specified with Days or Date in a Lifecycle Expiration Policy.
      #   @return [Boolean]
      class LifecycleExpiration < Struct.new(
        :date,
        :days,
        :expired_object_delete_marker)
        include Aws::Structure
      end

      # @note When making an API call, pass LifecycleRule
      #   data as a hash:
      #
      #       {
      #         expiration: {
      #           date: Time.now,
      #           days: 1,
      #           expired_object_delete_marker: false,
      #         },
      #         id: "ID",
      #         prefix: "Prefix",
      #         filter: {
      #           prefix: "Prefix",
      #           tag: {
      #             key: "ObjectKey", # required
      #             value: "Value", # required
      #           },
      #           and: {
      #             prefix: "Prefix",
      #             tags: [
      #               {
      #                 key: "ObjectKey", # required
      #                 value: "Value", # required
      #               },
      #             ],
      #           },
      #         },
      #         status: "Enabled", # required, accepts Enabled, Disabled
      #         transitions: [
      #           {
      #             date: Time.now,
      #             days: 1,
      #             storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #           },
      #         ],
      #         noncurrent_version_transitions: [
      #           {
      #             noncurrent_days: 1,
      #             storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #           },
      #         ],
      #         noncurrent_version_expiration: {
      #           noncurrent_days: 1,
      #         },
      #         abort_incomplete_multipart_upload: {
      #           days_after_initiation: 1,
      #         },
      #       }
      # @!attribute [rw] expiration
      #   @return [Types::LifecycleExpiration]
      #
      # @!attribute [rw] id
      #   Unique identifier for the rule. The value cannot be longer than 255
      #   characters.
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   Prefix identifying one or more objects to which the rule applies.
      #   This is deprecated; use Filter instead.
      #   @return [String]
      #
      # @!attribute [rw] filter
      #   The Filter is used to identify objects that a Lifecycle Rule applies
      #   to. A Filter must have exactly one of Prefix, Tag, or And specified.
      #   @return [Types::LifecycleRuleFilter]
      #
      # @!attribute [rw] status
      #   If 'Enabled', the rule is currently being applied. If
      #   'Disabled', the rule is not currently being applied.
      #   @return [String]
      #
      # @!attribute [rw] transitions
      #   @return [Array<Types::Transition>]
      #
      # @!attribute [rw] noncurrent_version_transitions
      #   @return [Array<Types::NoncurrentVersionTransition>]
      #
      # @!attribute [rw] noncurrent_version_expiration
      #   Specifies when noncurrent object versions expire. Upon expiration,
      #   Amazon S3 permanently deletes the noncurrent object versions. You
      #   set this lifecycle configuration action on a bucket that has
      #   versioning enabled (or suspended) to request that Amazon S3 delete
      #   noncurrent object versions at a specific period in the object's
      #   lifetime.
      #   @return [Types::NoncurrentVersionExpiration]
      #
      # @!attribute [rw] abort_incomplete_multipart_upload
      #   Specifies the days since the initiation of an Incomplete Multipart
      #   Upload that Lifecycle will wait before permanently removing all
      #   parts of the upload.
      #   @return [Types::AbortIncompleteMultipartUpload]
      class LifecycleRule < Struct.new(
        :expiration,
        :id,
        :prefix,
        :filter,
        :status,
        :transitions,
        :noncurrent_version_transitions,
        :noncurrent_version_expiration,
        :abort_incomplete_multipart_upload)
        include Aws::Structure
      end

      # This is used in a Lifecycle Rule Filter to apply a logical AND to two
      # or more predicates. The Lifecycle Rule will apply to any object
      # matching all of the predicates configured inside the And operator.
      # @note When making an API call, pass LifecycleRuleAndOperator
      #   data as a hash:
      #
      #       {
      #         prefix: "Prefix",
      #         tags: [
      #           {
      #             key: "ObjectKey", # required
      #             value: "Value", # required
      #           },
      #         ],
      #       }
      # @!attribute [rw] prefix
      #   @return [String]
      #
      # @!attribute [rw] tags
      #   All of these tags must exist in the object's tag set in order for
      #   the rule to apply.
      #   @return [Array<Types::Tag>]
      class LifecycleRuleAndOperator < Struct.new(
        :prefix,
        :tags)
        include Aws::Structure
      end

      # The Filter is used to identify objects that a Lifecycle Rule applies
      # to. A Filter must have exactly one of Prefix, Tag, or And specified.
      # @note When making an API call, pass LifecycleRuleFilter
      #   data as a hash:
      #
      #       {
      #         prefix: "Prefix",
      #         tag: {
      #           key: "ObjectKey", # required
      #           value: "Value", # required
      #         },
      #         and: {
      #           prefix: "Prefix",
      #           tags: [
      #             {
      #               key: "ObjectKey", # required
      #               value: "Value", # required
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] prefix
      #   Prefix identifying one or more objects to which the rule applies.
      #   @return [String]
      #
      # @!attribute [rw] tag
      #   This tag must exist in the object's tag set in order for the rule
      #   to apply.
      #   @return [Types::Tag]
      #
      # @!attribute [rw] and
      #   This is used in a Lifecycle Rule Filter to apply a logical AND to
      #   two or more predicates. The Lifecycle Rule will apply to any object
      #   matching all of the predicates configured inside the And operator.
      #   @return [Types::LifecycleRuleAndOperator]
      class LifecycleRuleFilter < Struct.new(
        :prefix,
        :tag,
        :and)
        include Aws::Structure
      end

      # @!attribute [rw] is_truncated
      #   Indicates whether the returned list of analytics configurations is
      #   complete. A value of true indicates that the list is not complete
      #   and the NextContinuationToken will be provided for a subsequent
      #   request.
      #   @return [Boolean]
      #
      # @!attribute [rw] continuation_token
      #   The ContinuationToken that represents where this request began.
      #   @return [String]
      #
      # @!attribute [rw] next_continuation_token
      #   NextContinuationToken is sent when isTruncated is true, which
      #   indicates that there are more analytics configurations to list. The
      #   next request must include this NextContinuationToken. The token is
      #   obfuscated and is not a usable value.
      #   @return [String]
      #
      # @!attribute [rw] analytics_configuration_list
      #   The list of analytics configurations for a bucket.
      #   @return [Array<Types::AnalyticsConfiguration>]
      class ListBucketAnalyticsConfigurationsOutput < Struct.new(
        :is_truncated,
        :continuation_token,
        :next_continuation_token,
        :analytics_configuration_list)
        include Aws::Structure
      end

      # @note When making an API call, pass ListBucketAnalyticsConfigurationsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         continuation_token: "Token",
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket from which analytics configurations are
      #   retrieved.
      #   @return [String]
      #
      # @!attribute [rw] continuation_token
      #   The ContinuationToken that represents a placeholder from where this
      #   request should begin.
      #   @return [String]
      class ListBucketAnalyticsConfigurationsRequest < Struct.new(
        :bucket,
        :continuation_token)
        include Aws::Structure
      end

      # @!attribute [rw] continuation_token
      #   If sent in the request, the marker that is used as a starting point
      #   for this inventory configuration list response.
      #   @return [String]
      #
      # @!attribute [rw] inventory_configuration_list
      #   The list of inventory configurations for a bucket.
      #   @return [Array<Types::InventoryConfiguration>]
      #
      # @!attribute [rw] is_truncated
      #   Indicates whether the returned list of inventory configurations is
      #   truncated in this response. A value of true indicates that the list
      #   is truncated.
      #   @return [Boolean]
      #
      # @!attribute [rw] next_continuation_token
      #   The marker used to continue this inventory configuration listing.
      #   Use the NextContinuationToken from this response to continue the
      #   listing in a subsequent request. The continuation token is an opaque
      #   value that Amazon S3 understands.
      #   @return [String]
      class ListBucketInventoryConfigurationsOutput < Struct.new(
        :continuation_token,
        :inventory_configuration_list,
        :is_truncated,
        :next_continuation_token)
        include Aws::Structure
      end

      # @note When making an API call, pass ListBucketInventoryConfigurationsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         continuation_token: "Token",
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket containing the inventory configurations to
      #   retrieve.
      #   @return [String]
      #
      # @!attribute [rw] continuation_token
      #   The marker used to continue an inventory configuration listing that
      #   has been truncated. Use the NextContinuationToken from a previously
      #   truncated list response to continue the listing. The continuation
      #   token is an opaque value that Amazon S3 understands.
      #   @return [String]
      class ListBucketInventoryConfigurationsRequest < Struct.new(
        :bucket,
        :continuation_token)
        include Aws::Structure
      end

      # @!attribute [rw] is_truncated
      #   Indicates whether the returned list of metrics configurations is
      #   complete. A value of true indicates that the list is not complete
      #   and the NextContinuationToken will be provided for a subsequent
      #   request.
      #   @return [Boolean]
      #
      # @!attribute [rw] continuation_token
      #   The marker that is used as a starting point for this metrics
      #   configuration list response. This value is present if it was sent in
      #   the request.
      #   @return [String]
      #
      # @!attribute [rw] next_continuation_token
      #   The marker used to continue a metrics configuration listing that has
      #   been truncated. Use the NextContinuationToken from a previously
      #   truncated list response to continue the listing. The continuation
      #   token is an opaque value that Amazon S3 understands.
      #   @return [String]
      #
      # @!attribute [rw] metrics_configuration_list
      #   The list of metrics configurations for a bucket.
      #   @return [Array<Types::MetricsConfiguration>]
      class ListBucketMetricsConfigurationsOutput < Struct.new(
        :is_truncated,
        :continuation_token,
        :next_continuation_token,
        :metrics_configuration_list)
        include Aws::Structure
      end

      # @note When making an API call, pass ListBucketMetricsConfigurationsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         continuation_token: "Token",
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket containing the metrics configurations to
      #   retrieve.
      #   @return [String]
      #
      # @!attribute [rw] continuation_token
      #   The marker that is used to continue a metrics configuration listing
      #   that has been truncated. Use the NextContinuationToken from a
      #   previously truncated list response to continue the listing. The
      #   continuation token is an opaque value that Amazon S3 understands.
      #   @return [String]
      class ListBucketMetricsConfigurationsRequest < Struct.new(
        :bucket,
        :continuation_token)
        include Aws::Structure
      end

      # @!attribute [rw] buckets
      #   @return [Array<Types::Bucket>]
      #
      # @!attribute [rw] owner
      #   @return [Types::Owner]
      class ListBucketsOutput < Struct.new(
        :buckets,
        :owner)
        include Aws::Structure
      end

      # @!attribute [rw] bucket
      #   Name of the bucket to which the multipart upload was initiated.
      #   @return [String]
      #
      # @!attribute [rw] key_marker
      #   The key at or after which the listing began.
      #   @return [String]
      #
      # @!attribute [rw] upload_id_marker
      #   Upload ID after which listing began.
      #   @return [String]
      #
      # @!attribute [rw] next_key_marker
      #   When a list is truncated, this element specifies the value that
      #   should be used for the key-marker request parameter in a subsequent
      #   request.
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   When a prefix is provided in the request, this field contains the
      #   specified prefix. The result contains only keys starting with the
      #   specified prefix.
      #   @return [String]
      #
      # @!attribute [rw] delimiter
      #   @return [String]
      #
      # @!attribute [rw] next_upload_id_marker
      #   When a list is truncated, this element specifies the value that
      #   should be used for the upload-id-marker request parameter in a
      #   subsequent request.
      #   @return [String]
      #
      # @!attribute [rw] max_uploads
      #   Maximum number of multipart uploads that could have been included in
      #   the response.
      #   @return [Integer]
      #
      # @!attribute [rw] is_truncated
      #   Indicates whether the returned list of multipart uploads is
      #   truncated. A value of true indicates that the list was truncated.
      #   The list can be truncated if the number of multipart uploads exceeds
      #   the limit allowed or specified by max uploads.
      #   @return [Boolean]
      #
      # @!attribute [rw] uploads
      #   @return [Array<Types::MultipartUpload>]
      #
      # @!attribute [rw] common_prefixes
      #   @return [Array<Types::CommonPrefix>]
      #
      # @!attribute [rw] encoding_type
      #   Encoding type used by Amazon S3 to encode object keys in the
      #   response.
      #   @return [String]
      class ListMultipartUploadsOutput < Struct.new(
        :bucket,
        :key_marker,
        :upload_id_marker,
        :next_key_marker,
        :prefix,
        :delimiter,
        :next_upload_id_marker,
        :max_uploads,
        :is_truncated,
        :uploads,
        :common_prefixes,
        :encoding_type)
        include Aws::Structure
      end

      # @note When making an API call, pass ListMultipartUploadsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         delimiter: "Delimiter",
      #         encoding_type: "url", # accepts url
      #         key_marker: "KeyMarker",
      #         max_uploads: 1,
      #         prefix: "Prefix",
      #         upload_id_marker: "UploadIdMarker",
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] delimiter
      #   Character you use to group keys.
      #   @return [String]
      #
      # @!attribute [rw] encoding_type
      #   Requests Amazon S3 to encode the object keys in the response and
      #   specifies the encoding method to use. An object key may contain any
      #   Unicode character; however, XML 1.0 parser cannot parse some
      #   characters, such as characters with an ASCII value from 0 to 10. For
      #   characters that are not supported in XML 1.0, you can add this
      #   parameter to request that Amazon S3 encode the keys in the response.
      #   @return [String]
      #
      # @!attribute [rw] key_marker
      #   Together with upload-id-marker, this parameter specifies the
      #   multipart upload after which listing should begin.
      #   @return [String]
      #
      # @!attribute [rw] max_uploads
      #   Sets the maximum number of multipart uploads, from 1 to 1,000, to
      #   return in the response body. 1,000 is the maximum number of uploads
      #   that can be returned in a response.
      #   @return [Integer]
      #
      # @!attribute [rw] prefix
      #   Lists in-progress uploads only for those keys that begin with the
      #   specified prefix.
      #   @return [String]
      #
      # @!attribute [rw] upload_id_marker
      #   Together with key-marker, specifies the multipart upload after which
      #   listing should begin. If key-marker is not specified, the
      #   upload-id-marker parameter is ignored.
      #   @return [String]
      class ListMultipartUploadsRequest < Struct.new(
        :bucket,
        :delimiter,
        :encoding_type,
        :key_marker,
        :max_uploads,
        :prefix,
        :upload_id_marker)
        include Aws::Structure
      end

      # @!attribute [rw] is_truncated
      #   A flag that indicates whether or not Amazon S3 returned all of the
      #   results that satisfied the search criteria. If your results were
      #   truncated, you can make a follow-up paginated request using the
      #   NextKeyMarker and NextVersionIdMarker response parameters as a
      #   starting place in another request to return the rest of the results.
      #   @return [Boolean]
      #
      # @!attribute [rw] key_marker
      #   Marks the last Key returned in a truncated response.
      #   @return [String]
      #
      # @!attribute [rw] version_id_marker
      #   @return [String]
      #
      # @!attribute [rw] next_key_marker
      #   Use this value for the key marker request parameter in a subsequent
      #   request.
      #   @return [String]
      #
      # @!attribute [rw] next_version_id_marker
      #   Use this value for the next version id marker parameter in a
      #   subsequent request.
      #   @return [String]
      #
      # @!attribute [rw] versions
      #   @return [Array<Types::ObjectVersion>]
      #
      # @!attribute [rw] delete_markers
      #   @return [Array<Types::DeleteMarkerEntry>]
      #
      # @!attribute [rw] name
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   @return [String]
      #
      # @!attribute [rw] delimiter
      #   @return [String]
      #
      # @!attribute [rw] max_keys
      #   @return [Integer]
      #
      # @!attribute [rw] common_prefixes
      #   @return [Array<Types::CommonPrefix>]
      #
      # @!attribute [rw] encoding_type
      #   Encoding type used by Amazon S3 to encode object keys in the
      #   response.
      #   @return [String]
      class ListObjectVersionsOutput < Struct.new(
        :is_truncated,
        :key_marker,
        :version_id_marker,
        :next_key_marker,
        :next_version_id_marker,
        :versions,
        :delete_markers,
        :name,
        :prefix,
        :delimiter,
        :max_keys,
        :common_prefixes,
        :encoding_type)
        include Aws::Structure
      end

      # @note When making an API call, pass ListObjectVersionsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         delimiter: "Delimiter",
      #         encoding_type: "url", # accepts url
      #         key_marker: "KeyMarker",
      #         max_keys: 1,
      #         prefix: "Prefix",
      #         version_id_marker: "VersionIdMarker",
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] delimiter
      #   A delimiter is a character you use to group keys.
      #   @return [String]
      #
      # @!attribute [rw] encoding_type
      #   Requests Amazon S3 to encode the object keys in the response and
      #   specifies the encoding method to use. An object key may contain any
      #   Unicode character; however, XML 1.0 parser cannot parse some
      #   characters, such as characters with an ASCII value from 0 to 10. For
      #   characters that are not supported in XML 1.0, you can add this
      #   parameter to request that Amazon S3 encode the keys in the response.
      #   @return [String]
      #
      # @!attribute [rw] key_marker
      #   Specifies the key to start with when listing objects in a bucket.
      #   @return [String]
      #
      # @!attribute [rw] max_keys
      #   Sets the maximum number of keys returned in the response. The
      #   response might contain fewer keys but will never contain more.
      #   @return [Integer]
      #
      # @!attribute [rw] prefix
      #   Limits the response to keys that begin with the specified prefix.
      #   @return [String]
      #
      # @!attribute [rw] version_id_marker
      #   Specifies the object version you want to start listing from.
      #   @return [String]
      class ListObjectVersionsRequest < Struct.new(
        :bucket,
        :delimiter,
        :encoding_type,
        :key_marker,
        :max_keys,
        :prefix,
        :version_id_marker)
        include Aws::Structure
      end

      # @!attribute [rw] is_truncated
      #   A flag that indicates whether or not Amazon S3 returned all of the
      #   results that satisfied the search criteria.
      #   @return [Boolean]
      #
      # @!attribute [rw] marker
      #   @return [String]
      #
      # @!attribute [rw] next_marker
      #   When response is truncated (the IsTruncated element value in the
      #   response is true), you can use the key name in this field as marker
      #   in the subsequent request to get next set of objects. Amazon S3
      #   lists objects in alphabetical order Note: This element is returned
      #   only if you have delimiter request parameter specified. If response
      #   does not include the NextMaker and it is truncated, you can use the
      #   value of the last Key in the response as the marker in the
      #   subsequent request to get the next set of object keys.
      #   @return [String]
      #
      # @!attribute [rw] contents
      #   @return [Array<Types::Object>]
      #
      # @!attribute [rw] name
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   @return [String]
      #
      # @!attribute [rw] delimiter
      #   @return [String]
      #
      # @!attribute [rw] max_keys
      #   @return [Integer]
      #
      # @!attribute [rw] common_prefixes
      #   @return [Array<Types::CommonPrefix>]
      #
      # @!attribute [rw] encoding_type
      #   Encoding type used by Amazon S3 to encode object keys in the
      #   response.
      #   @return [String]
      class ListObjectsOutput < Struct.new(
        :is_truncated,
        :marker,
        :next_marker,
        :contents,
        :name,
        :prefix,
        :delimiter,
        :max_keys,
        :common_prefixes,
        :encoding_type)
        include Aws::Structure
      end

      # @note When making an API call, pass ListObjectsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         delimiter: "Delimiter",
      #         encoding_type: "url", # accepts url
      #         marker: "Marker",
      #         max_keys: 1,
      #         prefix: "Prefix",
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] delimiter
      #   A delimiter is a character you use to group keys.
      #   @return [String]
      #
      # @!attribute [rw] encoding_type
      #   Requests Amazon S3 to encode the object keys in the response and
      #   specifies the encoding method to use. An object key may contain any
      #   Unicode character; however, XML 1.0 parser cannot parse some
      #   characters, such as characters with an ASCII value from 0 to 10. For
      #   characters that are not supported in XML 1.0, you can add this
      #   parameter to request that Amazon S3 encode the keys in the response.
      #   @return [String]
      #
      # @!attribute [rw] marker
      #   Specifies the key to start with when listing objects in a bucket.
      #   @return [String]
      #
      # @!attribute [rw] max_keys
      #   Sets the maximum number of keys returned in the response. The
      #   response might contain fewer keys but will never contain more.
      #   @return [Integer]
      #
      # @!attribute [rw] prefix
      #   Limits the response to keys that begin with the specified prefix.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the list objects request. Bucket owners need not specify this
      #   parameter in their requests.
      #   @return [String]
      class ListObjectsRequest < Struct.new(
        :bucket,
        :delimiter,
        :encoding_type,
        :marker,
        :max_keys,
        :prefix,
        :request_payer)
        include Aws::Structure
      end

      # @!attribute [rw] is_truncated
      #   A flag that indicates whether or not Amazon S3 returned all of the
      #   results that satisfied the search criteria.
      #   @return [Boolean]
      #
      # @!attribute [rw] contents
      #   Metadata about each object returned.
      #   @return [Array<Types::Object>]
      #
      # @!attribute [rw] name
      #   Name of the bucket to list.
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   Limits the response to keys that begin with the specified prefix.
      #   @return [String]
      #
      # @!attribute [rw] delimiter
      #   A delimiter is a character you use to group keys.
      #   @return [String]
      #
      # @!attribute [rw] max_keys
      #   Sets the maximum number of keys returned in the response. The
      #   response might contain fewer keys but will never contain more.
      #   @return [Integer]
      #
      # @!attribute [rw] common_prefixes
      #   CommonPrefixes contains all (if there are any) keys between Prefix
      #   and the next occurrence of the string specified by delimiter
      #   @return [Array<Types::CommonPrefix>]
      #
      # @!attribute [rw] encoding_type
      #   Encoding type used by Amazon S3 to encode object keys in the
      #   response.
      #   @return [String]
      #
      # @!attribute [rw] key_count
      #   KeyCount is the number of keys returned with this request. KeyCount
      #   will always be less than equals to MaxKeys field. Say you ask for 50
      #   keys, your result will include less than equals 50 keys
      #   @return [Integer]
      #
      # @!attribute [rw] continuation_token
      #   ContinuationToken indicates Amazon S3 that the list is being
      #   continued on this bucket with a token. ContinuationToken is
      #   obfuscated and is not a real key
      #   @return [String]
      #
      # @!attribute [rw] next_continuation_token
      #   NextContinuationToken is sent when isTruncated is true which means
      #   there are more keys in the bucket that can be listed. The next list
      #   requests to Amazon S3 can be continued with this
      #   NextContinuationToken. NextContinuationToken is obfuscated and is
      #   not a real key
      #   @return [String]
      #
      # @!attribute [rw] start_after
      #   StartAfter is where you want Amazon S3 to start listing from. Amazon
      #   S3 starts listing after this specified key. StartAfter can be any
      #   key in the bucket
      #   @return [String]
      class ListObjectsV2Output < Struct.new(
        :is_truncated,
        :contents,
        :name,
        :prefix,
        :delimiter,
        :max_keys,
        :common_prefixes,
        :encoding_type,
        :key_count,
        :continuation_token,
        :next_continuation_token,
        :start_after)
        include Aws::Structure
      end

      # @note When making an API call, pass ListObjectsV2Request
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         delimiter: "Delimiter",
      #         encoding_type: "url", # accepts url
      #         max_keys: 1,
      #         prefix: "Prefix",
      #         continuation_token: "Token",
      #         fetch_owner: false,
      #         start_after: "StartAfter",
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   Name of the bucket to list.
      #   @return [String]
      #
      # @!attribute [rw] delimiter
      #   A delimiter is a character you use to group keys.
      #   @return [String]
      #
      # @!attribute [rw] encoding_type
      #   Encoding type used by Amazon S3 to encode object keys in the
      #   response.
      #   @return [String]
      #
      # @!attribute [rw] max_keys
      #   Sets the maximum number of keys returned in the response. The
      #   response might contain fewer keys but will never contain more.
      #   @return [Integer]
      #
      # @!attribute [rw] prefix
      #   Limits the response to keys that begin with the specified prefix.
      #   @return [String]
      #
      # @!attribute [rw] continuation_token
      #   ContinuationToken indicates Amazon S3 that the list is being
      #   continued on this bucket with a token. ContinuationToken is
      #   obfuscated and is not a real key
      #   @return [String]
      #
      # @!attribute [rw] fetch_owner
      #   The owner field is not present in listV2 by default, if you want to
      #   return owner field with each key in the result then set the fetch
      #   owner field to true
      #   @return [Boolean]
      #
      # @!attribute [rw] start_after
      #   StartAfter is where you want Amazon S3 to start listing from. Amazon
      #   S3 starts listing after this specified key. StartAfter can be any
      #   key in the bucket
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the list objects request in V2 style. Bucket owners need not specify
      #   this parameter in their requests.
      #   @return [String]
      class ListObjectsV2Request < Struct.new(
        :bucket,
        :delimiter,
        :encoding_type,
        :max_keys,
        :prefix,
        :continuation_token,
        :fetch_owner,
        :start_after,
        :request_payer)
        include Aws::Structure
      end

      # @!attribute [rw] abort_date
      #   Date when multipart upload will become eligible for abort operation
      #   by lifecycle.
      #   @return [Time]
      #
      # @!attribute [rw] abort_rule_id
      #   Id of the lifecycle rule that makes a multipart upload eligible for
      #   abort operation.
      #   @return [String]
      #
      # @!attribute [rw] bucket
      #   Name of the bucket to which the multipart upload was initiated.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   Object key for which the multipart upload was initiated.
      #   @return [String]
      #
      # @!attribute [rw] upload_id
      #   Upload ID identifying the multipart upload whose parts are being
      #   listed.
      #   @return [String]
      #
      # @!attribute [rw] part_number_marker
      #   Part number after which listing begins.
      #   @return [Integer]
      #
      # @!attribute [rw] next_part_number_marker
      #   When a list is truncated, this element specifies the last part in
      #   the list, as well as the value to use for the part-number-marker
      #   request parameter in a subsequent request.
      #   @return [Integer]
      #
      # @!attribute [rw] max_parts
      #   Maximum number of parts that were allowed in the response.
      #   @return [Integer]
      #
      # @!attribute [rw] is_truncated
      #   Indicates whether the returned list of parts is truncated.
      #   @return [Boolean]
      #
      # @!attribute [rw] parts
      #   @return [Array<Types::Part>]
      #
      # @!attribute [rw] initiator
      #   Identifies who initiated the multipart upload.
      #   @return [Types::Initiator]
      #
      # @!attribute [rw] owner
      #   @return [Types::Owner]
      #
      # @!attribute [rw] storage_class
      #   The class of storage used to store the object.
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class ListPartsOutput < Struct.new(
        :abort_date,
        :abort_rule_id,
        :bucket,
        :key,
        :upload_id,
        :part_number_marker,
        :next_part_number_marker,
        :max_parts,
        :is_truncated,
        :parts,
        :initiator,
        :owner,
        :storage_class,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass ListPartsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         max_parts: 1,
      #         part_number_marker: 1,
      #         upload_id: "MultipartUploadId", # required
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] max_parts
      #   Sets the maximum number of parts to return.
      #   @return [Integer]
      #
      # @!attribute [rw] part_number_marker
      #   Specifies the part after which listing should begin. Only parts with
      #   higher part numbers will be listed.
      #   @return [Integer]
      #
      # @!attribute [rw] upload_id
      #   Upload ID identifying the multipart upload whose parts are being
      #   listed.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class ListPartsRequest < Struct.new(
        :bucket,
        :key,
        :max_parts,
        :part_number_marker,
        :upload_id,
        :request_payer)
        include Aws::Structure
      end

      # @note When making an API call, pass LoggingEnabled
      #   data as a hash:
      #
      #       {
      #         target_bucket: "TargetBucket",
      #         target_grants: [
      #           {
      #             grantee: {
      #               display_name: "DisplayName",
      #               email_address: "EmailAddress",
      #               id: "ID",
      #               type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #               uri: "URI",
      #             },
      #             permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE
      #           },
      #         ],
      #         target_prefix: "TargetPrefix",
      #       }
      # @!attribute [rw] target_bucket
      #   Specifies the bucket where you want Amazon S3 to store server access
      #   logs. You can have your logs delivered to any bucket that you own,
      #   including the same bucket that is being logged. You can also
      #   configure multiple buckets to deliver their logs to the same target
      #   bucket. In this case you should choose a different TargetPrefix for
      #   each source bucket so that the delivered log files can be
      #   distinguished by key.
      #   @return [String]
      #
      # @!attribute [rw] target_grants
      #   @return [Array<Types::TargetGrant>]
      #
      # @!attribute [rw] target_prefix
      #   This element lets you specify a prefix for the keys that the log
      #   files will be stored under.
      #   @return [String]
      class LoggingEnabled < Struct.new(
        :target_bucket,
        :target_grants,
        :target_prefix)
        include Aws::Structure
      end

      # @note When making an API call, pass MetricsAndOperator
      #   data as a hash:
      #
      #       {
      #         prefix: "Prefix",
      #         tags: [
      #           {
      #             key: "ObjectKey", # required
      #             value: "Value", # required
      #           },
      #         ],
      #       }
      # @!attribute [rw] prefix
      #   The prefix used when evaluating an AND predicate.
      #   @return [String]
      #
      # @!attribute [rw] tags
      #   The list of tags used when evaluating an AND predicate.
      #   @return [Array<Types::Tag>]
      class MetricsAndOperator < Struct.new(
        :prefix,
        :tags)
        include Aws::Structure
      end

      # @note When making an API call, pass MetricsConfiguration
      #   data as a hash:
      #
      #       {
      #         id: "MetricsId", # required
      #         filter: {
      #           prefix: "Prefix",
      #           tag: {
      #             key: "ObjectKey", # required
      #             value: "Value", # required
      #           },
      #           and: {
      #             prefix: "Prefix",
      #             tags: [
      #               {
      #                 key: "ObjectKey", # required
      #                 value: "Value", # required
      #               },
      #             ],
      #           },
      #         },
      #       }
      # @!attribute [rw] id
      #   The ID used to identify the metrics configuration.
      #   @return [String]
      #
      # @!attribute [rw] filter
      #   Specifies a metrics configuration filter. The metrics configuration
      #   will only include objects that meet the filter's criteria. A filter
      #   must be a prefix, a tag, or a conjunction (MetricsAndOperator).
      #   @return [Types::MetricsFilter]
      class MetricsConfiguration < Struct.new(
        :id,
        :filter)
        include Aws::Structure
      end

      # @note When making an API call, pass MetricsFilter
      #   data as a hash:
      #
      #       {
      #         prefix: "Prefix",
      #         tag: {
      #           key: "ObjectKey", # required
      #           value: "Value", # required
      #         },
      #         and: {
      #           prefix: "Prefix",
      #           tags: [
      #             {
      #               key: "ObjectKey", # required
      #               value: "Value", # required
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] prefix
      #   The prefix used when evaluating a metrics filter.
      #   @return [String]
      #
      # @!attribute [rw] tag
      #   The tag used when evaluating a metrics filter.
      #   @return [Types::Tag]
      #
      # @!attribute [rw] and
      #   A conjunction (logical AND) of predicates, which is used in
      #   evaluating a metrics filter. The operator must have at least two
      #   predicates, and an object must match all of the predicates in order
      #   for the filter to apply.
      #   @return [Types::MetricsAndOperator]
      class MetricsFilter < Struct.new(
        :prefix,
        :tag,
        :and)
        include Aws::Structure
      end

      # @!attribute [rw] upload_id
      #   Upload ID that identifies the multipart upload.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   Key of the object for which the multipart upload was initiated.
      #   @return [String]
      #
      # @!attribute [rw] initiated
      #   Date and time at which the multipart upload was initiated.
      #   @return [Time]
      #
      # @!attribute [rw] storage_class
      #   The class of storage used to store the object.
      #   @return [String]
      #
      # @!attribute [rw] owner
      #   @return [Types::Owner]
      #
      # @!attribute [rw] initiator
      #   Identifies who initiated the multipart upload.
      #   @return [Types::Initiator]
      class MultipartUpload < Struct.new(
        :upload_id,
        :key,
        :initiated,
        :storage_class,
        :owner,
        :initiator)
        include Aws::Structure
      end

      # Specifies when noncurrent object versions expire. Upon expiration,
      # Amazon S3 permanently deletes the noncurrent object versions. You set
      # this lifecycle configuration action on a bucket that has versioning
      # enabled (or suspended) to request that Amazon S3 delete noncurrent
      # object versions at a specific period in the object's lifetime.
      # @note When making an API call, pass NoncurrentVersionExpiration
      #   data as a hash:
      #
      #       {
      #         noncurrent_days: 1,
      #       }
      # @!attribute [rw] noncurrent_days
      #   Specifies the number of days an object is noncurrent before Amazon
      #   S3 can perform the associated action. For information about the
      #   noncurrent days calculations, see [How Amazon S3 Calculates When an
      #   Object Became Noncurrent][1] in the Amazon Simple Storage Service
      #   Developer Guide.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html
      #   @return [Integer]
      class NoncurrentVersionExpiration < Struct.new(
        :noncurrent_days)
        include Aws::Structure
      end

      # Container for the transition rule that describes when noncurrent
      # objects transition to the STANDARD\_IA or GLACIER storage class. If
      # your bucket is versioning-enabled (or versioning is suspended), you
      # can set this action to request that Amazon S3 transition noncurrent
      # object versions to the STANDARD\_IA or GLACIER storage class at a
      # specific period in the object's lifetime.
      # @note When making an API call, pass NoncurrentVersionTransition
      #   data as a hash:
      #
      #       {
      #         noncurrent_days: 1,
      #         storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #       }
      # @!attribute [rw] noncurrent_days
      #   Specifies the number of days an object is noncurrent before Amazon
      #   S3 can perform the associated action. For information about the
      #   noncurrent days calculations, see [How Amazon S3 Calculates When an
      #   Object Became Noncurrent][1] in the Amazon Simple Storage Service
      #   Developer Guide.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/s3-access-control.html
      #   @return [Integer]
      #
      # @!attribute [rw] storage_class
      #   The class of storage used to store the object.
      #   @return [String]
      class NoncurrentVersionTransition < Struct.new(
        :noncurrent_days,
        :storage_class)
        include Aws::Structure
      end

      # Container for specifying the notification configuration of the bucket.
      # If this element is empty, notifications are turned off on the bucket.
      # @note When making an API call, pass NotificationConfiguration
      #   data as a hash:
      #
      #       {
      #         topic_configurations: [
      #           {
      #             id: "NotificationId",
      #             topic_arn: "TopicArn", # required
      #             events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             filter: {
      #               key: {
      #                 filter_rules: [
      #                   {
      #                     name: "prefix", # accepts prefix, suffix
      #                     value: "FilterRuleValue",
      #                   },
      #                 ],
      #               },
      #             },
      #           },
      #         ],
      #         queue_configurations: [
      #           {
      #             id: "NotificationId",
      #             queue_arn: "QueueArn", # required
      #             events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             filter: {
      #               key: {
      #                 filter_rules: [
      #                   {
      #                     name: "prefix", # accepts prefix, suffix
      #                     value: "FilterRuleValue",
      #                   },
      #                 ],
      #               },
      #             },
      #           },
      #         ],
      #         lambda_function_configurations: [
      #           {
      #             id: "NotificationId",
      #             lambda_function_arn: "LambdaFunctionArn", # required
      #             events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             filter: {
      #               key: {
      #                 filter_rules: [
      #                   {
      #                     name: "prefix", # accepts prefix, suffix
      #                     value: "FilterRuleValue",
      #                   },
      #                 ],
      #               },
      #             },
      #           },
      #         ],
      #       }
      # @!attribute [rw] topic_configurations
      #   @return [Array<Types::TopicConfiguration>]
      #
      # @!attribute [rw] queue_configurations
      #   @return [Array<Types::QueueConfiguration>]
      #
      # @!attribute [rw] lambda_function_configurations
      #   @return [Array<Types::LambdaFunctionConfiguration>]
      class NotificationConfiguration < Struct.new(
        :topic_configurations,
        :queue_configurations,
        :lambda_function_configurations)
        include Aws::Structure
      end

      # @note When making an API call, pass NotificationConfigurationDeprecated
      #   data as a hash:
      #
      #       {
      #         topic_configuration: {
      #           id: "NotificationId",
      #           events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           topic: "TopicArn",
      #         },
      #         queue_configuration: {
      #           id: "NotificationId",
      #           event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           queue: "QueueArn",
      #         },
      #         cloud_function_configuration: {
      #           id: "NotificationId",
      #           event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #           cloud_function: "CloudFunction",
      #           invocation_role: "CloudFunctionInvocationRole",
      #         },
      #       }
      # @!attribute [rw] topic_configuration
      #   @return [Types::TopicConfigurationDeprecated]
      #
      # @!attribute [rw] queue_configuration
      #   @return [Types::QueueConfigurationDeprecated]
      #
      # @!attribute [rw] cloud_function_configuration
      #   @return [Types::CloudFunctionConfiguration]
      class NotificationConfigurationDeprecated < Struct.new(
        :topic_configuration,
        :queue_configuration,
        :cloud_function_configuration)
        include Aws::Structure
      end

      # Container for object key name filtering rules. For information about
      # key name filtering, go to [Configuring Event Notifications][1] in the
      # Amazon Simple Storage Service Developer Guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html
      # @note When making an API call, pass NotificationConfigurationFilter
      #   data as a hash:
      #
      #       {
      #         key: {
      #           filter_rules: [
      #             {
      #               name: "prefix", # accepts prefix, suffix
      #               value: "FilterRuleValue",
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] key
      #   Container for object key name prefix and suffix filtering rules.
      #   @return [Types::S3KeyFilter]
      class NotificationConfigurationFilter < Struct.new(
        :key)
        include Aws::Structure
      end

      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] last_modified
      #   @return [Time]
      #
      # @!attribute [rw] etag
      #   @return [String]
      #
      # @!attribute [rw] size
      #   @return [Integer]
      #
      # @!attribute [rw] storage_class
      #   The class of storage used to store the object.
      #   @return [String]
      #
      # @!attribute [rw] owner
      #   @return [Types::Owner]
      class Object < Struct.new(
        :key,
        :last_modified,
        :etag,
        :size,
        :storage_class,
        :owner)
        include Aws::Structure
      end

      # @note When making an API call, pass ObjectIdentifier
      #   data as a hash:
      #
      #       {
      #         key: "ObjectKey", # required
      #         version_id: "ObjectVersionId",
      #       }
      # @!attribute [rw] key
      #   Key name of the object to delete.
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   VersionId for the specific version of the object to delete.
      #   @return [String]
      class ObjectIdentifier < Struct.new(
        :key,
        :version_id)
        include Aws::Structure
      end

      # @!attribute [rw] etag
      #   @return [String]
      #
      # @!attribute [rw] size
      #   Size in bytes of the object.
      #   @return [Integer]
      #
      # @!attribute [rw] storage_class
      #   The class of storage used to store the object.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   The object key.
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   Version ID of an object.
      #   @return [String]
      #
      # @!attribute [rw] is_latest
      #   Specifies whether the object is (true) or is not (false) the latest
      #   version of an object.
      #   @return [Boolean]
      #
      # @!attribute [rw] last_modified
      #   Date and time the object was last modified.
      #   @return [Time]
      #
      # @!attribute [rw] owner
      #   @return [Types::Owner]
      class ObjectVersion < Struct.new(
        :etag,
        :size,
        :storage_class,
        :key,
        :version_id,
        :is_latest,
        :last_modified,
        :owner)
        include Aws::Structure
      end

      # @note When making an API call, pass Owner
      #   data as a hash:
      #
      #       {
      #         display_name: "DisplayName",
      #         id: "ID",
      #       }
      # @!attribute [rw] display_name
      #   @return [String]
      #
      # @!attribute [rw] id
      #   @return [String]
      class Owner < Struct.new(
        :display_name,
        :id)
        include Aws::Structure
      end

      # @!attribute [rw] part_number
      #   Part number identifying the part. This is a positive integer between
      #   1 and 10,000.
      #   @return [Integer]
      #
      # @!attribute [rw] last_modified
      #   Date and time at which the part was uploaded.
      #   @return [Time]
      #
      # @!attribute [rw] etag
      #   Entity tag returned when the part was uploaded.
      #   @return [String]
      #
      # @!attribute [rw] size
      #   Size of the uploaded part data.
      #   @return [Integer]
      class Part < Struct.new(
        :part_number,
        :last_modified,
        :etag,
        :size)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketAccelerateConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         accelerate_configuration: { # required
      #           status: "Enabled", # accepts Enabled, Suspended
      #         },
      #       }
      # @!attribute [rw] bucket
      #   Name of the bucket for which the accelerate configuration is set.
      #   @return [String]
      #
      # @!attribute [rw] accelerate_configuration
      #   Specifies the Accelerate Configuration you want to set for the
      #   bucket.
      #   @return [Types::AccelerateConfiguration]
      class PutBucketAccelerateConfigurationRequest < Struct.new(
        :bucket,
        :accelerate_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketAclRequest
      #   data as a hash:
      #
      #       {
      #         acl: "private", # accepts private, public-read, public-read-write, authenticated-read
      #         access_control_policy: {
      #           grants: [
      #             {
      #               grantee: {
      #                 display_name: "DisplayName",
      #                 email_address: "EmailAddress",
      #                 id: "ID",
      #                 type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #                 uri: "URI",
      #               },
      #               permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
      #             },
      #           ],
      #           owner: {
      #             display_name: "DisplayName",
      #             id: "ID",
      #           },
      #         },
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         grant_full_control: "GrantFullControl",
      #         grant_read: "GrantRead",
      #         grant_read_acp: "GrantReadACP",
      #         grant_write: "GrantWrite",
      #         grant_write_acp: "GrantWriteACP",
      #       }
      # @!attribute [rw] acl
      #   The canned ACL to apply to the bucket.
      #   @return [String]
      #
      # @!attribute [rw] access_control_policy
      #   @return [Types::AccessControlPolicy]
      #
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] grant_full_control
      #   Allows grantee the read, write, read ACP, and write ACP permissions
      #   on the bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_read
      #   Allows grantee to list the objects in the bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_read_acp
      #   Allows grantee to read the bucket ACL.
      #   @return [String]
      #
      # @!attribute [rw] grant_write
      #   Allows grantee to create, overwrite, and delete any object in the
      #   bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_write_acp
      #   Allows grantee to write the ACL for the applicable bucket.
      #   @return [String]
      class PutBucketAclRequest < Struct.new(
        :acl,
        :access_control_policy,
        :bucket,
        :content_md5,
        :grant_full_control,
        :grant_read,
        :grant_read_acp,
        :grant_write,
        :grant_write_acp)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketAnalyticsConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "AnalyticsId", # required
      #         analytics_configuration: { # required
      #           id: "AnalyticsId", # required
      #           filter: {
      #             prefix: "Prefix",
      #             tag: {
      #               key: "ObjectKey", # required
      #               value: "Value", # required
      #             },
      #             and: {
      #               prefix: "Prefix",
      #               tags: [
      #                 {
      #                   key: "ObjectKey", # required
      #                   value: "Value", # required
      #                 },
      #               ],
      #             },
      #           },
      #           storage_class_analysis: { # required
      #             data_export: {
      #               output_schema_version: "V_1", # required, accepts V_1
      #               destination: { # required
      #                 s3_bucket_destination: { # required
      #                   format: "CSV", # required, accepts CSV
      #                   bucket_account_id: "AccountId",
      #                   bucket: "BucketName", # required
      #                   prefix: "Prefix",
      #                 },
      #               },
      #             },
      #           },
      #         },
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket to which an analytics configuration is
      #   stored.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The identifier used to represent an analytics configuration.
      #   @return [String]
      #
      # @!attribute [rw] analytics_configuration
      #   The configuration and any analyses for the analytics filter.
      #   @return [Types::AnalyticsConfiguration]
      class PutBucketAnalyticsConfigurationRequest < Struct.new(
        :bucket,
        :id,
        :analytics_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketCorsRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         cors_configuration: { # required
      #           cors_rules: [ # required
      #             {
      #               allowed_headers: ["AllowedHeader"],
      #               allowed_methods: ["AllowedMethod"], # required
      #               allowed_origins: ["AllowedOrigin"], # required
      #               expose_headers: ["ExposeHeader"],
      #               max_age_seconds: 1,
      #             },
      #           ],
      #         },
      #         content_md5: "ContentMD5",
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] cors_configuration
      #   @return [Types::CORSConfiguration]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      class PutBucketCorsRequest < Struct.new(
        :bucket,
        :cors_configuration,
        :content_md5)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketInventoryConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "InventoryId", # required
      #         inventory_configuration: { # required
      #           destination: { # required
      #             s3_bucket_destination: { # required
      #               account_id: "AccountId",
      #               bucket: "BucketName", # required
      #               format: "CSV", # required, accepts CSV
      #               prefix: "Prefix",
      #             },
      #           },
      #           is_enabled: false, # required
      #           filter: {
      #             prefix: "Prefix", # required
      #           },
      #           id: "InventoryId", # required
      #           included_object_versions: "All", # required, accepts All, Current
      #           optional_fields: ["Size"], # accepts Size, LastModifiedDate, StorageClass, ETag, IsMultipartUploaded, ReplicationStatus
      #           schedule: { # required
      #             frequency: "Daily", # required, accepts Daily, Weekly
      #           },
      #         },
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket where the inventory configuration will be
      #   stored.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The ID used to identify the inventory configuration.
      #   @return [String]
      #
      # @!attribute [rw] inventory_configuration
      #   Specifies the inventory configuration.
      #   @return [Types::InventoryConfiguration]
      class PutBucketInventoryConfigurationRequest < Struct.new(
        :bucket,
        :id,
        :inventory_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketLifecycleConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         lifecycle_configuration: {
      #           rules: [ # required
      #             {
      #               expiration: {
      #                 date: Time.now,
      #                 days: 1,
      #                 expired_object_delete_marker: false,
      #               },
      #               id: "ID",
      #               prefix: "Prefix",
      #               filter: {
      #                 prefix: "Prefix",
      #                 tag: {
      #                   key: "ObjectKey", # required
      #                   value: "Value", # required
      #                 },
      #                 and: {
      #                   prefix: "Prefix",
      #                   tags: [
      #                     {
      #                       key: "ObjectKey", # required
      #                       value: "Value", # required
      #                     },
      #                   ],
      #                 },
      #               },
      #               status: "Enabled", # required, accepts Enabled, Disabled
      #               transitions: [
      #                 {
      #                   date: Time.now,
      #                   days: 1,
      #                   storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #                 },
      #               ],
      #               noncurrent_version_transitions: [
      #                 {
      #                   noncurrent_days: 1,
      #                   storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #                 },
      #               ],
      #               noncurrent_version_expiration: {
      #                 noncurrent_days: 1,
      #               },
      #               abort_incomplete_multipart_upload: {
      #                 days_after_initiation: 1,
      #               },
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] lifecycle_configuration
      #   @return [Types::BucketLifecycleConfiguration]
      class PutBucketLifecycleConfigurationRequest < Struct.new(
        :bucket,
        :lifecycle_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketLifecycleRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         lifecycle_configuration: {
      #           rules: [ # required
      #             {
      #               expiration: {
      #                 date: Time.now,
      #                 days: 1,
      #                 expired_object_delete_marker: false,
      #               },
      #               id: "ID",
      #               prefix: "Prefix", # required
      #               status: "Enabled", # required, accepts Enabled, Disabled
      #               transition: {
      #                 date: Time.now,
      #                 days: 1,
      #                 storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #               },
      #               noncurrent_version_transition: {
      #                 noncurrent_days: 1,
      #                 storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #               },
      #               noncurrent_version_expiration: {
      #                 noncurrent_days: 1,
      #               },
      #               abort_incomplete_multipart_upload: {
      #                 days_after_initiation: 1,
      #               },
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] lifecycle_configuration
      #   @return [Types::LifecycleConfiguration]
      class PutBucketLifecycleRequest < Struct.new(
        :bucket,
        :content_md5,
        :lifecycle_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketLoggingRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         bucket_logging_status: { # required
      #           logging_enabled: {
      #             target_bucket: "TargetBucket",
      #             target_grants: [
      #               {
      #                 grantee: {
      #                   display_name: "DisplayName",
      #                   email_address: "EmailAddress",
      #                   id: "ID",
      #                   type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #                   uri: "URI",
      #                 },
      #                 permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE
      #               },
      #             ],
      #             target_prefix: "TargetPrefix",
      #           },
      #         },
      #         content_md5: "ContentMD5",
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] bucket_logging_status
      #   @return [Types::BucketLoggingStatus]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      class PutBucketLoggingRequest < Struct.new(
        :bucket,
        :bucket_logging_status,
        :content_md5)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketMetricsConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         id: "MetricsId", # required
      #         metrics_configuration: { # required
      #           id: "MetricsId", # required
      #           filter: {
      #             prefix: "Prefix",
      #             tag: {
      #               key: "ObjectKey", # required
      #               value: "Value", # required
      #             },
      #             and: {
      #               prefix: "Prefix",
      #               tags: [
      #                 {
      #                   key: "ObjectKey", # required
      #                   value: "Value", # required
      #                 },
      #               ],
      #             },
      #           },
      #         },
      #       }
      # @!attribute [rw] bucket
      #   The name of the bucket for which the metrics configuration is set.
      #   @return [String]
      #
      # @!attribute [rw] id
      #   The ID used to identify the metrics configuration.
      #   @return [String]
      #
      # @!attribute [rw] metrics_configuration
      #   Specifies the metrics configuration.
      #   @return [Types::MetricsConfiguration]
      class PutBucketMetricsConfigurationRequest < Struct.new(
        :bucket,
        :id,
        :metrics_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketNotificationConfigurationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         notification_configuration: { # required
      #           topic_configurations: [
      #             {
      #               id: "NotificationId",
      #               topic_arn: "TopicArn", # required
      #               events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #               filter: {
      #                 key: {
      #                   filter_rules: [
      #                     {
      #                       name: "prefix", # accepts prefix, suffix
      #                       value: "FilterRuleValue",
      #                     },
      #                   ],
      #                 },
      #               },
      #             },
      #           ],
      #           queue_configurations: [
      #             {
      #               id: "NotificationId",
      #               queue_arn: "QueueArn", # required
      #               events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #               filter: {
      #                 key: {
      #                   filter_rules: [
      #                     {
      #                       name: "prefix", # accepts prefix, suffix
      #                       value: "FilterRuleValue",
      #                     },
      #                   ],
      #                 },
      #               },
      #             },
      #           ],
      #           lambda_function_configurations: [
      #             {
      #               id: "NotificationId",
      #               lambda_function_arn: "LambdaFunctionArn", # required
      #               events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #               filter: {
      #                 key: {
      #                   filter_rules: [
      #                     {
      #                       name: "prefix", # accepts prefix, suffix
      #                       value: "FilterRuleValue",
      #                     },
      #                   ],
      #                 },
      #               },
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] notification_configuration
      #   Container for specifying the notification configuration of the
      #   bucket. If this element is empty, notifications are turned off on
      #   the bucket.
      #   @return [Types::NotificationConfiguration]
      class PutBucketNotificationConfigurationRequest < Struct.new(
        :bucket,
        :notification_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketNotificationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         notification_configuration: { # required
      #           topic_configuration: {
      #             id: "NotificationId",
      #             events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             topic: "TopicArn",
      #           },
      #           queue_configuration: {
      #             id: "NotificationId",
      #             event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             queue: "QueueArn",
      #           },
      #           cloud_function_configuration: {
      #             id: "NotificationId",
      #             event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #             cloud_function: "CloudFunction",
      #             invocation_role: "CloudFunctionInvocationRole",
      #           },
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] notification_configuration
      #   @return [Types::NotificationConfigurationDeprecated]
      class PutBucketNotificationRequest < Struct.new(
        :bucket,
        :content_md5,
        :notification_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketPolicyRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         policy: "Policy", # required
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] policy
      #   The bucket policy as a JSON document.
      #   @return [String]
      class PutBucketPolicyRequest < Struct.new(
        :bucket,
        :content_md5,
        :policy)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketReplicationRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         replication_configuration: { # required
      #           role: "Role", # required
      #           rules: [ # required
      #             {
      #               id: "ID",
      #               prefix: "Prefix", # required
      #               status: "Enabled", # required, accepts Enabled, Disabled
      #               destination: { # required
      #                 bucket: "BucketName", # required
      #                 storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #               },
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] replication_configuration
      #   Container for replication rules. You can add as many as 1,000 rules.
      #   Total replication configuration size can be up to 2 MB.
      #   @return [Types::ReplicationConfiguration]
      class PutBucketReplicationRequest < Struct.new(
        :bucket,
        :content_md5,
        :replication_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketRequestPaymentRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         request_payment_configuration: { # required
      #           payer: "Requester", # required, accepts Requester, BucketOwner
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] request_payment_configuration
      #   @return [Types::RequestPaymentConfiguration]
      class PutBucketRequestPaymentRequest < Struct.new(
        :bucket,
        :content_md5,
        :request_payment_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketTaggingRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         tagging: { # required
      #           tag_set: [ # required
      #             {
      #               key: "ObjectKey", # required
      #               value: "Value", # required
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] tagging
      #   @return [Types::Tagging]
      class PutBucketTaggingRequest < Struct.new(
        :bucket,
        :content_md5,
        :tagging)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketVersioningRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         mfa: "MFA",
      #         versioning_configuration: { # required
      #           mfa_delete: "Enabled", # accepts Enabled, Disabled
      #           status: "Enabled", # accepts Enabled, Suspended
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] mfa
      #   The concatenation of the authentication device's serial number, a
      #   space, and the value that is displayed on your authentication
      #   device.
      #   @return [String]
      #
      # @!attribute [rw] versioning_configuration
      #   @return [Types::VersioningConfiguration]
      class PutBucketVersioningRequest < Struct.new(
        :bucket,
        :content_md5,
        :mfa,
        :versioning_configuration)
        include Aws::Structure
      end

      # @note When making an API call, pass PutBucketWebsiteRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         website_configuration: { # required
      #           error_document: {
      #             key: "ObjectKey", # required
      #           },
      #           index_document: {
      #             suffix: "Suffix", # required
      #           },
      #           redirect_all_requests_to: {
      #             host_name: "HostName", # required
      #             protocol: "http", # accepts http, https
      #           },
      #           routing_rules: [
      #             {
      #               condition: {
      #                 http_error_code_returned_equals: "HttpErrorCodeReturnedEquals",
      #                 key_prefix_equals: "KeyPrefixEquals",
      #               },
      #               redirect: { # required
      #                 host_name: "HostName",
      #                 http_redirect_code: "HttpRedirectCode",
      #                 protocol: "http", # accepts http, https
      #                 replace_key_prefix_with: "ReplaceKeyPrefixWith",
      #                 replace_key_with: "ReplaceKeyWith",
      #               },
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] website_configuration
      #   @return [Types::WebsiteConfiguration]
      class PutBucketWebsiteRequest < Struct.new(
        :bucket,
        :content_md5,
        :website_configuration)
        include Aws::Structure
      end

      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class PutObjectAclOutput < Struct.new(
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass PutObjectAclRequest
      #   data as a hash:
      #
      #       {
      #         acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
      #         access_control_policy: {
      #           grants: [
      #             {
      #               grantee: {
      #                 display_name: "DisplayName",
      #                 email_address: "EmailAddress",
      #                 id: "ID",
      #                 type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #                 uri: "URI",
      #               },
      #               permission: "FULL_CONTROL", # accepts FULL_CONTROL, WRITE, WRITE_ACP, READ, READ_ACP
      #             },
      #           ],
      #           owner: {
      #             display_name: "DisplayName",
      #             id: "ID",
      #           },
      #         },
      #         bucket: "BucketName", # required
      #         content_md5: "ContentMD5",
      #         grant_full_control: "GrantFullControl",
      #         grant_read: "GrantRead",
      #         grant_read_acp: "GrantReadACP",
      #         grant_write: "GrantWrite",
      #         grant_write_acp: "GrantWriteACP",
      #         key: "ObjectKey", # required
      #         request_payer: "requester", # accepts requester
      #         version_id: "ObjectVersionId",
      #       }
      # @!attribute [rw] acl
      #   The canned ACL to apply to the object.
      #   @return [String]
      #
      # @!attribute [rw] access_control_policy
      #   @return [Types::AccessControlPolicy]
      #
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] grant_full_control
      #   Allows grantee the read, write, read ACP, and write ACP permissions
      #   on the bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_read
      #   Allows grantee to list the objects in the bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_read_acp
      #   Allows grantee to read the bucket ACL.
      #   @return [String]
      #
      # @!attribute [rw] grant_write
      #   Allows grantee to create, overwrite, and delete any object in the
      #   bucket.
      #   @return [String]
      #
      # @!attribute [rw] grant_write_acp
      #   Allows grantee to write the ACL for the applicable bucket.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   VersionId used to reference a specific version of the object.
      #   @return [String]
      class PutObjectAclRequest < Struct.new(
        :acl,
        :access_control_policy,
        :bucket,
        :content_md5,
        :grant_full_control,
        :grant_read,
        :grant_read_acp,
        :grant_write,
        :grant_write_acp,
        :key,
        :request_payer,
        :version_id)
        include Aws::Structure
      end

      # @!attribute [rw] expiration
      #   If the object expiration is configured, this will contain the
      #   expiration date (expiry-date) and rule ID (rule-id). The value of
      #   rule-id is URL encoded.
      #   @return [String]
      #
      # @!attribute [rw] etag
      #   Entity tag for the uploaded object.
      #   @return [String]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   Version of the object.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header confirming the
      #   encryption algorithm used.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header to provide
      #   round trip message integrity verification of the customer-provided
      #   encryption key.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   If present, specifies the ID of the AWS Key Management Service (KMS)
      #   master encryption key that was used for the object.
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class PutObjectOutput < Struct.new(
        :expiration,
        :etag,
        :server_side_encryption,
        :version_id,
        :sse_customer_algorithm,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass PutObjectRequest
      #   data as a hash:
      #
      #       {
      #         acl: "private", # accepts private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, bucket-owner-full-control
      #         body: source_file,
      #         bucket: "BucketName", # required
      #         cache_control: "CacheControl",
      #         content_disposition: "ContentDisposition",
      #         content_encoding: "ContentEncoding",
      #         content_language: "ContentLanguage",
      #         content_length: 1,
      #         content_md5: "ContentMD5",
      #         content_type: "ContentType",
      #         expires: Time.now,
      #         grant_full_control: "GrantFullControl",
      #         grant_read: "GrantRead",
      #         grant_read_acp: "GrantReadACP",
      #         grant_write_acp: "GrantWriteACP",
      #         key: "ObjectKey", # required
      #         metadata: {
      #           "MetadataKey" => "MetadataValue",
      #         },
      #         server_side_encryption: "AES256", # accepts AES256, aws:kms
      #         storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #         website_redirect_location: "WebsiteRedirectLocation",
      #         sse_customer_algorithm: "SSECustomerAlgorithm",
      #         sse_customer_key: "SSECustomerKey",
      #         sse_customer_key_md5: "SSECustomerKeyMD5",
      #         ssekms_key_id: "SSEKMSKeyId",
      #         request_payer: "requester", # accepts requester
      #         tagging: "TaggingHeader",
      #       }
      # @!attribute [rw] acl
      #   The canned ACL to apply to the object.
      #   @return [String]
      #
      # @!attribute [rw] body
      #   Object data.
      #   @return [IO]
      #
      # @!attribute [rw] bucket
      #   Name of the bucket to which the PUT operation was initiated.
      #   @return [String]
      #
      # @!attribute [rw] cache_control
      #   Specifies caching behavior along the request/reply chain.
      #   @return [String]
      #
      # @!attribute [rw] content_disposition
      #   Specifies presentational information for the object.
      #   @return [String]
      #
      # @!attribute [rw] content_encoding
      #   Specifies what content encodings have been applied to the object and
      #   thus what decoding mechanisms must be applied to obtain the
      #   media-type referenced by the Content-Type header field.
      #   @return [String]
      #
      # @!attribute [rw] content_language
      #   The language the content is in.
      #   @return [String]
      #
      # @!attribute [rw] content_length
      #   Size of the body in bytes. This parameter is useful when the size of
      #   the body cannot be determined automatically.
      #   @return [Integer]
      #
      # @!attribute [rw] content_md5
      #   The base64-encoded 128-bit MD5 digest of the part data.
      #   @return [String]
      #
      # @!attribute [rw] content_type
      #   A standard MIME type describing the format of the object data.
      #   @return [String]
      #
      # @!attribute [rw] expires
      #   The date and time at which the object is no longer cacheable.
      #   @return [Time]
      #
      # @!attribute [rw] grant_full_control
      #   Gives the grantee READ, READ\_ACP, and WRITE\_ACP permissions on the
      #   object.
      #   @return [String]
      #
      # @!attribute [rw] grant_read
      #   Allows grantee to read the object data and its metadata.
      #   @return [String]
      #
      # @!attribute [rw] grant_read_acp
      #   Allows grantee to read the object ACL.
      #   @return [String]
      #
      # @!attribute [rw] grant_write_acp
      #   Allows grantee to write the ACL for the applicable object.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   Object key for which the PUT operation was initiated.
      #   @return [String]
      #
      # @!attribute [rw] metadata
      #   A map of metadata to store with the object in S3.
      #   @return [Hash<String,String>]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] storage_class
      #   The type of storage to use for the object. Defaults to 'STANDARD'.
      #   @return [String]
      #
      # @!attribute [rw] website_redirect_location
      #   If the bucket is configured as a website, redirects requests for
      #   this object to another object in the same bucket or to an external
      #   URL. Amazon S3 stores the value of this header in the object
      #   metadata.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   in encrypting data. This value is used to store the object and then
      #   it is discarded; Amazon does not store the encryption key. The key
      #   must be appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   Specifies the AWS KMS key ID to use for object encryption. All GET
      #   and PUT requests for an object protected by AWS KMS will fail if not
      #   made via SSL or using SigV4. Documentation on configuring any of the
      #   officially supported AWS SDKs and CLI can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      #
      # @!attribute [rw] tagging
      #   The tag-set for the object. The tag-set must be encoded as URL Query
      #   parameters
      #   @return [String]
      class PutObjectRequest < Struct.new(
        :acl,
        :body,
        :bucket,
        :cache_control,
        :content_disposition,
        :content_encoding,
        :content_language,
        :content_length,
        :content_md5,
        :content_type,
        :expires,
        :grant_full_control,
        :grant_read,
        :grant_read_acp,
        :grant_write_acp,
        :key,
        :metadata,
        :server_side_encryption,
        :storage_class,
        :website_redirect_location,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :request_payer,
        :tagging)
        include Aws::Structure
      end

      # @!attribute [rw] version_id
      #   @return [String]
      class PutObjectTaggingOutput < Struct.new(
        :version_id)
        include Aws::Structure
      end

      # @note When making an API call, pass PutObjectTaggingRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         version_id: "ObjectVersionId",
      #         content_md5: "ContentMD5",
      #         tagging: { # required
      #           tag_set: [ # required
      #             {
      #               key: "ObjectKey", # required
      #               value: "Value", # required
      #             },
      #           ],
      #         },
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   @return [String]
      #
      # @!attribute [rw] content_md5
      #   @return [String]
      #
      # @!attribute [rw] tagging
      #   @return [Types::Tagging]
      class PutObjectTaggingRequest < Struct.new(
        :bucket,
        :key,
        :version_id,
        :content_md5,
        :tagging)
        include Aws::Structure
      end

      # Container for specifying an configuration when you want Amazon S3 to
      # publish events to an Amazon Simple Queue Service (Amazon SQS) queue.
      # @note When making an API call, pass QueueConfiguration
      #   data as a hash:
      #
      #       {
      #         id: "NotificationId",
      #         queue_arn: "QueueArn", # required
      #         events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         filter: {
      #           key: {
      #             filter_rules: [
      #               {
      #                 name: "prefix", # accepts prefix, suffix
      #                 value: "FilterRuleValue",
      #               },
      #             ],
      #           },
      #         },
      #       }
      # @!attribute [rw] id
      #   Optional unique identifier for configurations in a notification
      #   configuration. If you don't provide one, Amazon S3 will assign an
      #   ID.
      #   @return [String]
      #
      # @!attribute [rw] queue_arn
      #   Amazon SQS queue ARN to which Amazon S3 will publish a message when
      #   it detects events of specified type.
      #   @return [String]
      #
      # @!attribute [rw] events
      #   @return [Array<String>]
      #
      # @!attribute [rw] filter
      #   Container for object key name filtering rules. For information about
      #   key name filtering, go to [Configuring Event Notifications][1] in
      #   the Amazon Simple Storage Service Developer Guide.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html
      #   @return [Types::NotificationConfigurationFilter]
      class QueueConfiguration < Struct.new(
        :id,
        :queue_arn,
        :events,
        :filter)
        include Aws::Structure
      end

      # @note When making an API call, pass QueueConfigurationDeprecated
      #   data as a hash:
      #
      #       {
      #         id: "NotificationId",
      #         event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         queue: "QueueArn",
      #       }
      # @!attribute [rw] id
      #   Optional unique identifier for configurations in a notification
      #   configuration. If you don't provide one, Amazon S3 will assign an
      #   ID.
      #   @return [String]
      #
      # @!attribute [rw] event
      #   Bucket event for which to send notifications.
      #   @return [String]
      #
      # @!attribute [rw] events
      #   @return [Array<String>]
      #
      # @!attribute [rw] queue
      #   @return [String]
      class QueueConfigurationDeprecated < Struct.new(
        :id,
        :event,
        :events,
        :queue)
        include Aws::Structure
      end

      # @note When making an API call, pass Redirect
      #   data as a hash:
      #
      #       {
      #         host_name: "HostName",
      #         http_redirect_code: "HttpRedirectCode",
      #         protocol: "http", # accepts http, https
      #         replace_key_prefix_with: "ReplaceKeyPrefixWith",
      #         replace_key_with: "ReplaceKeyWith",
      #       }
      # @!attribute [rw] host_name
      #   The host name to use in the redirect request.
      #   @return [String]
      #
      # @!attribute [rw] http_redirect_code
      #   The HTTP redirect code to use on the response. Not required if one
      #   of the siblings is present.
      #   @return [String]
      #
      # @!attribute [rw] protocol
      #   Protocol to use (http, https) when redirecting requests. The default
      #   is the protocol that is used in the original request.
      #   @return [String]
      #
      # @!attribute [rw] replace_key_prefix_with
      #   The object key prefix to use in the redirect request. For example,
      #   to redirect requests for all pages with prefix docs/ (objects in the
      #   docs/ folder) to documents/, you can set a condition block with
      #   KeyPrefixEquals set to docs/ and in the Redirect set
      #   ReplaceKeyPrefixWith to /documents. Not required if one of the
      #   siblings is present. Can be present only if ReplaceKeyWith is not
      #   provided.
      #   @return [String]
      #
      # @!attribute [rw] replace_key_with
      #   The specific object key to use in the redirect request. For example,
      #   redirect request to error.html. Not required if one of the sibling
      #   is present. Can be present only if ReplaceKeyPrefixWith is not
      #   provided.
      #   @return [String]
      class Redirect < Struct.new(
        :host_name,
        :http_redirect_code,
        :protocol,
        :replace_key_prefix_with,
        :replace_key_with)
        include Aws::Structure
      end

      # @note When making an API call, pass RedirectAllRequestsTo
      #   data as a hash:
      #
      #       {
      #         host_name: "HostName", # required
      #         protocol: "http", # accepts http, https
      #       }
      # @!attribute [rw] host_name
      #   Name of the host where requests will be redirected.
      #   @return [String]
      #
      # @!attribute [rw] protocol
      #   Protocol to use (http, https) when redirecting requests. The default
      #   is the protocol that is used in the original request.
      #   @return [String]
      class RedirectAllRequestsTo < Struct.new(
        :host_name,
        :protocol)
        include Aws::Structure
      end

      # Container for replication rules. You can add as many as 1,000 rules.
      # Total replication configuration size can be up to 2 MB.
      # @note When making an API call, pass ReplicationConfiguration
      #   data as a hash:
      #
      #       {
      #         role: "Role", # required
      #         rules: [ # required
      #           {
      #             id: "ID",
      #             prefix: "Prefix", # required
      #             status: "Enabled", # required, accepts Enabled, Disabled
      #             destination: { # required
      #               bucket: "BucketName", # required
      #               storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #             },
      #           },
      #         ],
      #       }
      # @!attribute [rw] role
      #   Amazon Resource Name (ARN) of an IAM role for Amazon S3 to assume
      #   when replicating the objects.
      #   @return [String]
      #
      # @!attribute [rw] rules
      #   Container for information about a particular replication rule.
      #   Replication configuration must have at least one rule and can
      #   contain up to 1,000 rules.
      #   @return [Array<Types::ReplicationRule>]
      class ReplicationConfiguration < Struct.new(
        :role,
        :rules)
        include Aws::Structure
      end

      # @note When making an API call, pass ReplicationRule
      #   data as a hash:
      #
      #       {
      #         id: "ID",
      #         prefix: "Prefix", # required
      #         status: "Enabled", # required, accepts Enabled, Disabled
      #         destination: { # required
      #           bucket: "BucketName", # required
      #           storage_class: "STANDARD", # accepts STANDARD, REDUCED_REDUNDANCY, STANDARD_IA
      #         },
      #       }
      # @!attribute [rw] id
      #   Unique identifier for the rule. The value cannot be longer than 255
      #   characters.
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   Object keyname prefix identifying one or more objects to which the
      #   rule applies. Maximum prefix length can be up to 1,024 characters.
      #   Overlapping prefixes are not supported.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The rule is ignored if status is not Enabled.
      #   @return [String]
      #
      # @!attribute [rw] destination
      #   @return [Types::Destination]
      class ReplicationRule < Struct.new(
        :id,
        :prefix,
        :status,
        :destination)
        include Aws::Structure
      end

      # @note When making an API call, pass RequestPaymentConfiguration
      #   data as a hash:
      #
      #       {
      #         payer: "Requester", # required, accepts Requester, BucketOwner
      #       }
      # @!attribute [rw] payer
      #   Specifies who pays for the download and request fees.
      #   @return [String]
      class RequestPaymentConfiguration < Struct.new(
        :payer)
        include Aws::Structure
      end

      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class RestoreObjectOutput < Struct.new(
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass RestoreObjectRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         key: "ObjectKey", # required
      #         version_id: "ObjectVersionId",
      #         restore_request: {
      #           days: 1, # required
      #           glacier_job_parameters: {
      #             tier: "Standard", # required, accepts Standard, Bulk, Expedited
      #           },
      #         },
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] version_id
      #   @return [String]
      #
      # @!attribute [rw] restore_request
      #   @return [Types::RestoreRequest]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class RestoreObjectRequest < Struct.new(
        :bucket,
        :key,
        :version_id,
        :restore_request,
        :request_payer)
        include Aws::Structure
      end

      # @note When making an API call, pass RestoreRequest
      #   data as a hash:
      #
      #       {
      #         days: 1, # required
      #         glacier_job_parameters: {
      #           tier: "Standard", # required, accepts Standard, Bulk, Expedited
      #         },
      #       }
      # @!attribute [rw] days
      #   Lifetime of the active copy in days
      #   @return [Integer]
      #
      # @!attribute [rw] glacier_job_parameters
      #   Glacier related prameters pertaining to this job.
      #   @return [Types::GlacierJobParameters]
      class RestoreRequest < Struct.new(
        :days,
        :glacier_job_parameters)
        include Aws::Structure
      end

      # @note When making an API call, pass RoutingRule
      #   data as a hash:
      #
      #       {
      #         condition: {
      #           http_error_code_returned_equals: "HttpErrorCodeReturnedEquals",
      #           key_prefix_equals: "KeyPrefixEquals",
      #         },
      #         redirect: { # required
      #           host_name: "HostName",
      #           http_redirect_code: "HttpRedirectCode",
      #           protocol: "http", # accepts http, https
      #           replace_key_prefix_with: "ReplaceKeyPrefixWith",
      #           replace_key_with: "ReplaceKeyWith",
      #         },
      #       }
      # @!attribute [rw] condition
      #   A container for describing a condition that must be met for the
      #   specified redirect to apply. For example, 1. If request is for pages
      #   in the /docs folder, redirect to the /documents folder. 2. If
      #   request results in HTTP error 4xx, redirect request to another host
      #   where you might process the error.
      #   @return [Types::Condition]
      #
      # @!attribute [rw] redirect
      #   Container for redirect information. You can redirect requests to
      #   another host, to another page, or with another protocol. In the
      #   event of an error, you can can specify a different error code to
      #   return.
      #   @return [Types::Redirect]
      class RoutingRule < Struct.new(
        :condition,
        :redirect)
        include Aws::Structure
      end

      # @note When making an API call, pass Rule
      #   data as a hash:
      #
      #       {
      #         expiration: {
      #           date: Time.now,
      #           days: 1,
      #           expired_object_delete_marker: false,
      #         },
      #         id: "ID",
      #         prefix: "Prefix", # required
      #         status: "Enabled", # required, accepts Enabled, Disabled
      #         transition: {
      #           date: Time.now,
      #           days: 1,
      #           storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #         },
      #         noncurrent_version_transition: {
      #           noncurrent_days: 1,
      #           storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #         },
      #         noncurrent_version_expiration: {
      #           noncurrent_days: 1,
      #         },
      #         abort_incomplete_multipart_upload: {
      #           days_after_initiation: 1,
      #         },
      #       }
      # @!attribute [rw] expiration
      #   @return [Types::LifecycleExpiration]
      #
      # @!attribute [rw] id
      #   Unique identifier for the rule. The value cannot be longer than 255
      #   characters.
      #   @return [String]
      #
      # @!attribute [rw] prefix
      #   Prefix identifying one or more objects to which the rule applies.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   If 'Enabled', the rule is currently being applied. If
      #   'Disabled', the rule is not currently being applied.
      #   @return [String]
      #
      # @!attribute [rw] transition
      #   @return [Types::Transition]
      #
      # @!attribute [rw] noncurrent_version_transition
      #   Container for the transition rule that describes when noncurrent
      #   objects transition to the STANDARD\_IA or GLACIER storage class. If
      #   your bucket is versioning-enabled (or versioning is suspended), you
      #   can set this action to request that Amazon S3 transition noncurrent
      #   object versions to the STANDARD\_IA or GLACIER storage class at a
      #   specific period in the object's lifetime.
      #   @return [Types::NoncurrentVersionTransition]
      #
      # @!attribute [rw] noncurrent_version_expiration
      #   Specifies when noncurrent object versions expire. Upon expiration,
      #   Amazon S3 permanently deletes the noncurrent object versions. You
      #   set this lifecycle configuration action on a bucket that has
      #   versioning enabled (or suspended) to request that Amazon S3 delete
      #   noncurrent object versions at a specific period in the object's
      #   lifetime.
      #   @return [Types::NoncurrentVersionExpiration]
      #
      # @!attribute [rw] abort_incomplete_multipart_upload
      #   Specifies the days since the initiation of an Incomplete Multipart
      #   Upload that Lifecycle will wait before permanently removing all
      #   parts of the upload.
      #   @return [Types::AbortIncompleteMultipartUpload]
      class Rule < Struct.new(
        :expiration,
        :id,
        :prefix,
        :status,
        :transition,
        :noncurrent_version_transition,
        :noncurrent_version_expiration,
        :abort_incomplete_multipart_upload)
        include Aws::Structure
      end

      # Container for object key name prefix and suffix filtering rules.
      # @note When making an API call, pass S3KeyFilter
      #   data as a hash:
      #
      #       {
      #         filter_rules: [
      #           {
      #             name: "prefix", # accepts prefix, suffix
      #             value: "FilterRuleValue",
      #           },
      #         ],
      #       }
      # @!attribute [rw] filter_rules
      #   A list of containers for key value pair that defines the criteria
      #   for the filter rule.
      #   @return [Array<Types::FilterRule>]
      class S3KeyFilter < Struct.new(
        :filter_rules)
        include Aws::Structure
      end

      # @note When making an API call, pass StorageClassAnalysis
      #   data as a hash:
      #
      #       {
      #         data_export: {
      #           output_schema_version: "V_1", # required, accepts V_1
      #           destination: { # required
      #             s3_bucket_destination: { # required
      #               format: "CSV", # required, accepts CSV
      #               bucket_account_id: "AccountId",
      #               bucket: "BucketName", # required
      #               prefix: "Prefix",
      #             },
      #           },
      #         },
      #       }
      # @!attribute [rw] data_export
      #   A container used to describe how data related to the storage class
      #   analysis should be exported.
      #   @return [Types::StorageClassAnalysisDataExport]
      class StorageClassAnalysis < Struct.new(
        :data_export)
        include Aws::Structure
      end

      # @note When making an API call, pass StorageClassAnalysisDataExport
      #   data as a hash:
      #
      #       {
      #         output_schema_version: "V_1", # required, accepts V_1
      #         destination: { # required
      #           s3_bucket_destination: { # required
      #             format: "CSV", # required, accepts CSV
      #             bucket_account_id: "AccountId",
      #             bucket: "BucketName", # required
      #             prefix: "Prefix",
      #           },
      #         },
      #       }
      # @!attribute [rw] output_schema_version
      #   The version of the output schema to use when exporting data. Must be
      #   V\_1.
      #   @return [String]
      #
      # @!attribute [rw] destination
      #   The place to store the data for an analysis.
      #   @return [Types::AnalyticsExportDestination]
      class StorageClassAnalysisDataExport < Struct.new(
        :output_schema_version,
        :destination)
        include Aws::Structure
      end

      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "ObjectKey", # required
      #         value: "Value", # required
      #       }
      # @!attribute [rw] key
      #   Name of the tag.
      #   @return [String]
      #
      # @!attribute [rw] value
      #   Value of the tag.
      #   @return [String]
      class Tag < Struct.new(
        :key,
        :value)
        include Aws::Structure
      end

      # @note When making an API call, pass Tagging
      #   data as a hash:
      #
      #       {
      #         tag_set: [ # required
      #           {
      #             key: "ObjectKey", # required
      #             value: "Value", # required
      #           },
      #         ],
      #       }
      # @!attribute [rw] tag_set
      #   @return [Array<Types::Tag>]
      class Tagging < Struct.new(
        :tag_set)
        include Aws::Structure
      end

      # @note When making an API call, pass TargetGrant
      #   data as a hash:
      #
      #       {
      #         grantee: {
      #           display_name: "DisplayName",
      #           email_address: "EmailAddress",
      #           id: "ID",
      #           type: "CanonicalUser", # required, accepts CanonicalUser, AmazonCustomerByEmail, Group
      #           uri: "URI",
      #         },
      #         permission: "FULL_CONTROL", # accepts FULL_CONTROL, READ, WRITE
      #       }
      # @!attribute [rw] grantee
      #   @return [Types::Grantee]
      #
      # @!attribute [rw] permission
      #   Logging permissions assigned to the Grantee for the bucket.
      #   @return [String]
      class TargetGrant < Struct.new(
        :grantee,
        :permission)
        include Aws::Structure
      end

      # Container for specifying the configuration when you want Amazon S3 to
      # publish events to an Amazon Simple Notification Service (Amazon SNS)
      # topic.
      # @note When making an API call, pass TopicConfiguration
      #   data as a hash:
      #
      #       {
      #         id: "NotificationId",
      #         topic_arn: "TopicArn", # required
      #         events: ["s3:ReducedRedundancyLostObject"], # required, accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         filter: {
      #           key: {
      #             filter_rules: [
      #               {
      #                 name: "prefix", # accepts prefix, suffix
      #                 value: "FilterRuleValue",
      #               },
      #             ],
      #           },
      #         },
      #       }
      # @!attribute [rw] id
      #   Optional unique identifier for configurations in a notification
      #   configuration. If you don't provide one, Amazon S3 will assign an
      #   ID.
      #   @return [String]
      #
      # @!attribute [rw] topic_arn
      #   Amazon SNS topic ARN to which Amazon S3 will publish a message when
      #   it detects events of specified type.
      #   @return [String]
      #
      # @!attribute [rw] events
      #   @return [Array<String>]
      #
      # @!attribute [rw] filter
      #   Container for object key name filtering rules. For information about
      #   key name filtering, go to [Configuring Event Notifications][1] in
      #   the Amazon Simple Storage Service Developer Guide.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/NotificationHowTo.html
      #   @return [Types::NotificationConfigurationFilter]
      class TopicConfiguration < Struct.new(
        :id,
        :topic_arn,
        :events,
        :filter)
        include Aws::Structure
      end

      # @note When making an API call, pass TopicConfigurationDeprecated
      #   data as a hash:
      #
      #       {
      #         id: "NotificationId",
      #         events: ["s3:ReducedRedundancyLostObject"], # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         event: "s3:ReducedRedundancyLostObject", # accepts s3:ReducedRedundancyLostObject, s3:ObjectCreated:*, s3:ObjectCreated:Put, s3:ObjectCreated:Post, s3:ObjectCreated:Copy, s3:ObjectCreated:CompleteMultipartUpload, s3:ObjectRemoved:*, s3:ObjectRemoved:Delete, s3:ObjectRemoved:DeleteMarkerCreated
      #         topic: "TopicArn",
      #       }
      # @!attribute [rw] id
      #   Optional unique identifier for configurations in a notification
      #   configuration. If you don't provide one, Amazon S3 will assign an
      #   ID.
      #   @return [String]
      #
      # @!attribute [rw] events
      #   @return [Array<String>]
      #
      # @!attribute [rw] event
      #   Bucket event for which to send notifications.
      #   @return [String]
      #
      # @!attribute [rw] topic
      #   Amazon SNS topic to which Amazon S3 will publish a message to report
      #   the specified events for the bucket.
      #   @return [String]
      class TopicConfigurationDeprecated < Struct.new(
        :id,
        :events,
        :event,
        :topic)
        include Aws::Structure
      end

      # @note When making an API call, pass Transition
      #   data as a hash:
      #
      #       {
      #         date: Time.now,
      #         days: 1,
      #         storage_class: "GLACIER", # accepts GLACIER, STANDARD_IA
      #       }
      # @!attribute [rw] date
      #   Indicates at what date the object is to be moved or deleted. Should
      #   be in GMT ISO 8601 Format.
      #   @return [Time]
      #
      # @!attribute [rw] days
      #   Indicates the lifetime, in days, of the objects that are subject to
      #   the rule. The value must be a non-zero positive integer.
      #   @return [Integer]
      #
      # @!attribute [rw] storage_class
      #   The class of storage used to store the object.
      #   @return [String]
      class Transition < Struct.new(
        :date,
        :days,
        :storage_class)
        include Aws::Structure
      end

      # @!attribute [rw] copy_source_version_id
      #   The version of the source object that was copied, if you have
      #   enabled versioning on the source bucket.
      #   @return [String]
      #
      # @!attribute [rw] copy_part_result
      #   @return [Types::CopyPartResult]
      #
      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header confirming the
      #   encryption algorithm used.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header to provide
      #   round trip message integrity verification of the customer-provided
      #   encryption key.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   If present, specifies the ID of the AWS Key Management Service (KMS)
      #   master encryption key that was used for the object.
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class UploadPartCopyOutput < Struct.new(
        :copy_source_version_id,
        :copy_part_result,
        :server_side_encryption,
        :sse_customer_algorithm,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass UploadPartCopyRequest
      #   data as a hash:
      #
      #       {
      #         bucket: "BucketName", # required
      #         copy_source: "CopySource", # required
      #         copy_source_if_match: "CopySourceIfMatch",
      #         copy_source_if_modified_since: Time.now,
      #         copy_source_if_none_match: "CopySourceIfNoneMatch",
      #         copy_source_if_unmodified_since: Time.now,
      #         copy_source_range: "CopySourceRange",
      #         key: "ObjectKey", # required
      #         part_number: 1, # required
      #         upload_id: "MultipartUploadId", # required
      #         sse_customer_algorithm: "SSECustomerAlgorithm",
      #         sse_customer_key: "SSECustomerKey",
      #         sse_customer_key_md5: "SSECustomerKeyMD5",
      #         copy_source_sse_customer_algorithm: "CopySourceSSECustomerAlgorithm",
      #         copy_source_sse_customer_key: "CopySourceSSECustomerKey",
      #         copy_source_sse_customer_key_md5: "CopySourceSSECustomerKeyMD5",
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] bucket
      #   @return [String]
      #
      # @!attribute [rw] copy_source
      #   The name of the source bucket and key name of the source object,
      #   separated by a slash (/). Must be URL-encoded.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_if_match
      #   Copies the object if its entity tag (ETag) matches the specified
      #   tag.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_if_modified_since
      #   Copies the object if it has been modified since the specified time.
      #   @return [Time]
      #
      # @!attribute [rw] copy_source_if_none_match
      #   Copies the object if its entity tag (ETag) is different than the
      #   specified ETag.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_if_unmodified_since
      #   Copies the object if it hasn't been modified since the specified
      #   time.
      #   @return [Time]
      #
      # @!attribute [rw] copy_source_range
      #   The range of bytes to copy from the source object. The range value
      #   must use the form bytes=first-last, where the first and last are the
      #   zero-based byte offsets to copy. For example, bytes=0-9 indicates
      #   that you want to copy the first ten bytes of the source. You can
      #   copy a range only if the source object is greater than 5 GB.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   @return [String]
      #
      # @!attribute [rw] part_number
      #   Part number of part being copied. This is a positive integer between
      #   1 and 10,000.
      #   @return [Integer]
      #
      # @!attribute [rw] upload_id
      #   Upload ID identifying the multipart upload whose part is being
      #   copied.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   in encrypting data. This value is used to store the object and then
      #   it is discarded; Amazon does not store the encryption key. The key
      #   must be appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header. This must
      #   be the same encryption key specified in the initiate multipart
      #   upload request.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_sse_customer_algorithm
      #   Specifies the algorithm to use when decrypting the source object
      #   (e.g., AES256).
      #   @return [String]
      #
      # @!attribute [rw] copy_source_sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   to decrypt the source object. The encryption key provided in this
      #   header must be one that was used when the source object was created.
      #   @return [String]
      #
      # @!attribute [rw] copy_source_sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class UploadPartCopyRequest < Struct.new(
        :bucket,
        :copy_source,
        :copy_source_if_match,
        :copy_source_if_modified_since,
        :copy_source_if_none_match,
        :copy_source_if_unmodified_since,
        :copy_source_range,
        :key,
        :part_number,
        :upload_id,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5,
        :copy_source_sse_customer_algorithm,
        :copy_source_sse_customer_key,
        :copy_source_sse_customer_key_md5,
        :request_payer)
        include Aws::Structure
      end

      # @!attribute [rw] server_side_encryption
      #   The Server-side encryption algorithm used when storing this object
      #   in S3 (e.g., AES256, aws:kms).
      #   @return [String]
      #
      # @!attribute [rw] etag
      #   Entity tag for the uploaded object.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header confirming the
      #   encryption algorithm used.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   If server-side encryption with a customer-provided encryption key
      #   was requested, the response will include this header to provide
      #   round trip message integrity verification of the customer-provided
      #   encryption key.
      #   @return [String]
      #
      # @!attribute [rw] ssekms_key_id
      #   If present, specifies the ID of the AWS Key Management Service (KMS)
      #   master encryption key that was used for the object.
      #   @return [String]
      #
      # @!attribute [rw] request_charged
      #   If present, indicates that the requester was successfully charged
      #   for the request.
      #   @return [String]
      class UploadPartOutput < Struct.new(
        :server_side_encryption,
        :etag,
        :sse_customer_algorithm,
        :sse_customer_key_md5,
        :ssekms_key_id,
        :request_charged)
        include Aws::Structure
      end

      # @note When making an API call, pass UploadPartRequest
      #   data as a hash:
      #
      #       {
      #         body: source_file,
      #         bucket: "BucketName", # required
      #         content_length: 1,
      #         content_md5: "ContentMD5",
      #         key: "ObjectKey", # required
      #         part_number: 1, # required
      #         upload_id: "MultipartUploadId", # required
      #         sse_customer_algorithm: "SSECustomerAlgorithm",
      #         sse_customer_key: "SSECustomerKey",
      #         sse_customer_key_md5: "SSECustomerKeyMD5",
      #         request_payer: "requester", # accepts requester
      #       }
      # @!attribute [rw] body
      #   Object data.
      #   @return [IO]
      #
      # @!attribute [rw] bucket
      #   Name of the bucket to which the multipart upload was initiated.
      #   @return [String]
      #
      # @!attribute [rw] content_length
      #   Size of the body in bytes. This parameter is useful when the size of
      #   the body cannot be determined automatically.
      #   @return [Integer]
      #
      # @!attribute [rw] content_md5
      #   The base64-encoded 128-bit MD5 digest of the part data.
      #   @return [String]
      #
      # @!attribute [rw] key
      #   Object key for which the multipart upload was initiated.
      #   @return [String]
      #
      # @!attribute [rw] part_number
      #   Part number of part being uploaded. This is a positive integer
      #   between 1 and 10,000.
      #   @return [Integer]
      #
      # @!attribute [rw] upload_id
      #   Upload ID identifying the multipart upload whose part is being
      #   uploaded.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_algorithm
      #   Specifies the algorithm to use to when encrypting the object (e.g.,
      #   AES256).
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key
      #   Specifies the customer-provided encryption key for Amazon S3 to use
      #   in encrypting data. This value is used to store the object and then
      #   it is discarded; Amazon does not store the encryption key. The key
      #   must be appropriate for use with the algorithm specified in the
      #   x-amz-server-side​-encryption​-customer-algorithm header. This must
      #   be the same encryption key specified in the initiate multipart
      #   upload request.
      #   @return [String]
      #
      # @!attribute [rw] sse_customer_key_md5
      #   Specifies the 128-bit MD5 digest of the encryption key according to
      #   RFC 1321. Amazon S3 uses this header for a message integrity check
      #   to ensure the encryption key was transmitted without error.
      #   @return [String]
      #
      # @!attribute [rw] request_payer
      #   Confirms that the requester knows that she or he will be charged for
      #   the request. Bucket owners need not specify this parameter in their
      #   requests. Documentation on downloading objects from requester pays
      #   buckets can be found at
      #   http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
      #   @return [String]
      class UploadPartRequest < Struct.new(
        :body,
        :bucket,
        :content_length,
        :content_md5,
        :key,
        :part_number,
        :upload_id,
        :sse_customer_algorithm,
        :sse_customer_key,
        :sse_customer_key_md5,
        :request_payer)
        include Aws::Structure
      end

      # @note When making an API call, pass VersioningConfiguration
      #   data as a hash:
      #
      #       {
      #         mfa_delete: "Enabled", # accepts Enabled, Disabled
      #         status: "Enabled", # accepts Enabled, Suspended
      #       }
      # @!attribute [rw] mfa_delete
      #   Specifies whether MFA delete is enabled in the bucket versioning
      #   configuration. This element is only returned if the bucket has been
      #   configured with MFA delete. If the bucket has never been so
      #   configured, this element is not returned.
      #   @return [String]
      #
      # @!attribute [rw] status
      #   The versioning state of the bucket.
      #   @return [String]
      class VersioningConfiguration < Struct.new(
        :mfa_delete,
        :status)
        include Aws::Structure
      end

      # @note When making an API call, pass WebsiteConfiguration
      #   data as a hash:
      #
      #       {
      #         error_document: {
      #           key: "ObjectKey", # required
      #         },
      #         index_document: {
      #           suffix: "Suffix", # required
      #         },
      #         redirect_all_requests_to: {
      #           host_name: "HostName", # required
      #           protocol: "http", # accepts http, https
      #         },
      #         routing_rules: [
      #           {
      #             condition: {
      #               http_error_code_returned_equals: "HttpErrorCodeReturnedEquals",
      #               key_prefix_equals: "KeyPrefixEquals",
      #             },
      #             redirect: { # required
      #               host_name: "HostName",
      #               http_redirect_code: "HttpRedirectCode",
      #               protocol: "http", # accepts http, https
      #               replace_key_prefix_with: "ReplaceKeyPrefixWith",
      #               replace_key_with: "ReplaceKeyWith",
      #             },
      #           },
      #         ],
      #       }
      # @!attribute [rw] error_document
      #   @return [Types::ErrorDocument]
      #
      # @!attribute [rw] index_document
      #   @return [Types::IndexDocument]
      #
      # @!attribute [rw] redirect_all_requests_to
      #   @return [Types::RedirectAllRequestsTo]
      #
      # @!attribute [rw] routing_rules
      #   @return [Array<Types::RoutingRule>]
      class WebsiteConfiguration < Struct.new(
        :error_document,
        :index_document,
        :redirect_all_requests_to,
        :routing_rules)
        include Aws::Structure
      end

    end
  end
end
