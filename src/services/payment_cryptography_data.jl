# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: payment_cryptography_data
using AWS.Compat
using AWS.UUIDs

"""
    decrypt_data(cipher_text, decryption_attributes, key_identifier)
    decrypt_data(cipher_text, decryption_attributes, key_identifier, params::Dict{String,<:Any})

Decrypts ciphertext data to plaintext using symmetric, asymmetric, or DUKPT data encryption
key. For more information, see Decrypt data in the Amazon Web Services Payment Cryptography
User Guide. You can use an encryption key generated within Amazon Web Services Payment
Cryptography, or you can import your own encryption key by calling ImportKey. For this
operation, the key must have KeyModesOfUse set to Decrypt. In asymmetric decryption, Amazon
Web Services Payment Cryptography decrypts the ciphertext using the private component of
the asymmetric encryption key pair. For data encryption outside of Amazon Web Services
Payment Cryptography, you can export the public component of the asymmetric key pair by
calling GetPublicCertificate. For symmetric and DUKPT decryption, Amazon Web Services
Payment Cryptography supports TDES and AES algorithms. For asymmetric decryption, Amazon
Web Services Payment Cryptography supports RSA. When you use DUKPT, for TDES algorithm, the
ciphertext data length must be a multiple of 16 bytes. For AES algorithm, the ciphertext
data length must be a multiple of 32 bytes. For information about valid keys for this
operation, see Understanding key attributes and Key types for specific data operations in
the Amazon Web Services Payment Cryptography User Guide.   Cross-account use: This
operation can't be used across different Amazon Web Services accounts.  Related operations:
    EncryptData     GetPublicCertificate     ImportKey

# Arguments
- `cipher_text`: The ciphertext to decrypt.
- `decryption_attributes`: The encryption key type and attributes for ciphertext decryption.
- `key_identifier`: The keyARN of the encryption key that Amazon Web Services Payment
  Cryptography uses for ciphertext decryption.

"""
decrypt_data(
    CipherText,
    DecryptionAttributes,
    KeyIdentifier;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/keys/$(KeyIdentifier)/decrypt",
    Dict{String,Any}(
        "CipherText" => CipherText, "DecryptionAttributes" => DecryptionAttributes
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function decrypt_data(
    CipherText,
    DecryptionAttributes,
    KeyIdentifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/keys/$(KeyIdentifier)/decrypt",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "CipherText" => CipherText,
                    "DecryptionAttributes" => DecryptionAttributes,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    encrypt_data(encryption_attributes, key_identifier, plain_text)
    encrypt_data(encryption_attributes, key_identifier, plain_text, params::Dict{String,<:Any})

Encrypts plaintext data to ciphertext using symmetric, asymmetric, or DUKPT data encryption
key. For more information, see Encrypt data in the Amazon Web Services Payment Cryptography
User Guide. You can generate an encryption key within Amazon Web Services Payment
Cryptography by calling CreateKey. You can import your own encryption key by calling
ImportKey. For this operation, the key must have KeyModesOfUse set to Encrypt. In
asymmetric encryption, plaintext is encrypted using public component. You can import the
public component of an asymmetric key pair created outside Amazon Web Services Payment
Cryptography by calling ImportKey).  for symmetric and DUKPT encryption, Amazon Web
Services Payment Cryptography supports TDES and AES algorithms. For asymmetric encryption,
Amazon Web Services Payment Cryptography supports RSA. To encrypt using DUKPT, you must
already have a DUKPT key in your account with KeyModesOfUse set to DeriveKey, or you can
generate a new DUKPT key by calling CreateKey. For information about valid keys for this
operation, see Understanding key attributes and Key types for specific data operations in
the Amazon Web Services Payment Cryptography User Guide.  Cross-account use: This operation
can't be used across different Amazon Web Services accounts.  Related operations:
DecryptData     GetPublicCertificate     ImportKey     ReEncryptData

# Arguments
- `encryption_attributes`: The encryption key type and attributes for plaintext encryption.
- `key_identifier`: The keyARN of the encryption key that Amazon Web Services Payment
  Cryptography uses for plaintext encryption.
- `plain_text`: The plaintext to be encrypted.

"""
encrypt_data(
    EncryptionAttributes,
    KeyIdentifier,
    PlainText;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/keys/$(KeyIdentifier)/encrypt",
    Dict{String,Any}(
        "EncryptionAttributes" => EncryptionAttributes, "PlainText" => PlainText
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function encrypt_data(
    EncryptionAttributes,
    KeyIdentifier,
    PlainText,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/keys/$(KeyIdentifier)/encrypt",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "EncryptionAttributes" => EncryptionAttributes, "PlainText" => PlainText
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    generate_card_validation_data(generation_attributes, key_identifier, primary_account_number)
    generate_card_validation_data(generation_attributes, key_identifier, primary_account_number, params::Dict{String,<:Any})

Generates card-related validation data using algorithms such as Card Verification Values
(CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2), or Card Security Codes (CSC).
For more information, see Generate card data in the Amazon Web Services Payment
Cryptography User Guide. This operation generates a CVV or CSC value that is printed on a
payment credit or debit card during card production. The CVV or CSC, PAN (Primary Account
Number) and expiration date of the card are required to check its validity during
transaction processing. To begin this operation, a CVK (Card Verification Key) encryption
key is required. You can use CreateKey or ImportKey to establish a CVK within Amazon Web
Services Payment Cryptography. The KeyModesOfUse should be set to Generate and Verify for a
CVK encryption key.  For information about valid keys for this operation, see Understanding
key attributes and Key types for specific data operations in the Amazon Web Services
Payment Cryptography User Guide.   Cross-account use: This operation can't be used across
different Amazon Web Services accounts.  Related operations:     ImportKey
VerifyCardValidationData

# Arguments
- `generation_attributes`: The algorithm for generating CVV or CSC values for the card
  within Amazon Web Services Payment Cryptography.
- `key_identifier`: The keyARN of the CVK encryption key that Amazon Web Services Payment
  Cryptography uses to generate card data.
- `primary_account_number`: The Primary Account Number (PAN), a unique identifier for a
  payment credit or debit card that associates the card with a specific account holder.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"ValidationDataLength"`: The length of the CVV or CSC to be generated. The default value
  is 3.
"""
generate_card_validation_data(
    GenerationAttributes,
    KeyIdentifier,
    PrimaryAccountNumber;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/cardvalidationdata/generate",
    Dict{String,Any}(
        "GenerationAttributes" => GenerationAttributes,
        "KeyIdentifier" => KeyIdentifier,
        "PrimaryAccountNumber" => PrimaryAccountNumber,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function generate_card_validation_data(
    GenerationAttributes,
    KeyIdentifier,
    PrimaryAccountNumber,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/cardvalidationdata/generate",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "GenerationAttributes" => GenerationAttributes,
                    "KeyIdentifier" => KeyIdentifier,
                    "PrimaryAccountNumber" => PrimaryAccountNumber,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    generate_mac(generation_attributes, key_identifier, message_data)
    generate_mac(generation_attributes, key_identifier, message_data, params::Dict{String,<:Any})

Generates a Message Authentication Code (MAC) cryptogram within Amazon Web Services Payment
Cryptography.  You can use this operation when keys won't be shared but mutual data is
present on both ends for validation. In this case, known data values are used to generate a
MAC on both ends for comparision without sending or receiving data in ciphertext or
plaintext. You can use this operation to generate a DUPKT, HMAC or EMV MAC by setting
generation attributes and algorithm to the associated values. The MAC generation encryption
key must have valid values for KeyUsage such as TR31_M7_HMAC_KEY for HMAC generation, and
they key must have KeyModesOfUse set to Generate and Verify. For information about valid
keys for this operation, see Understanding key attributes and Key types for specific data
operations in the Amazon Web Services Payment Cryptography User Guide.   Cross-account use:
This operation can't be used across different Amazon Web Services accounts.  Related
operations:     VerifyMac

# Arguments
- `generation_attributes`: The attributes and data values to use for MAC generation within
  Amazon Web Services Payment Cryptography.
- `key_identifier`: The keyARN of the MAC generation encryption key.
- `message_data`: The data for which a MAC is under generation.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MacLength"`: The length of a MAC under generation.
"""
generate_mac(
    GenerationAttributes,
    KeyIdentifier,
    MessageData;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/mac/generate",
    Dict{String,Any}(
        "GenerationAttributes" => GenerationAttributes,
        "KeyIdentifier" => KeyIdentifier,
        "MessageData" => MessageData,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function generate_mac(
    GenerationAttributes,
    KeyIdentifier,
    MessageData,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/mac/generate",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "GenerationAttributes" => GenerationAttributes,
                    "KeyIdentifier" => KeyIdentifier,
                    "MessageData" => MessageData,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    generate_pin_data(encryption_key_identifier, generation_attributes, generation_key_identifier, pin_block_format, primary_account_number)
    generate_pin_data(encryption_key_identifier, generation_attributes, generation_key_identifier, pin_block_format, primary_account_number, params::Dict{String,<:Any})

Generates pin-related data such as PIN, PIN Verification Value (PVV), PIN Block, and PIN
Offset during new card issuance or reissuance. For more information, see Generate PIN data
in the Amazon Web Services Payment Cryptography User Guide. PIN data is never transmitted
in clear to or from Amazon Web Services Payment Cryptography. This operation generates PIN,
PVV, or PIN Offset and then encrypts it using Pin Encryption Key (PEK) to create an
EncryptedPinBlock for transmission from Amazon Web Services Payment Cryptography. This
operation uses a separate Pin Verification Key (PVK) for VISA PVV generation.  For
information about valid keys for this operation, see Understanding key attributes and Key
types for specific data operations in the Amazon Web Services Payment Cryptography User
Guide.  Cross-account use: This operation can't be used across different Amazon Web
Services accounts.  Related operations:     GenerateCardValidationData     TranslatePinData
    VerifyPinData

# Arguments
- `encryption_key_identifier`: The keyARN of the PEK that Amazon Web Services Payment
  Cryptography uses to encrypt the PIN Block.
- `generation_attributes`: The attributes and values to use for PIN, PVV, or PIN Offset
  generation.
- `generation_key_identifier`: The keyARN of the PEK that Amazon Web Services Payment
  Cryptography uses for pin data generation.
- `pin_block_format`: The PIN encoding format for pin data generation as specified in ISO
  9564. Amazon Web Services Payment Cryptography supports ISO_Format_0 and ISO_Format_3. The
  ISO_Format_0 PIN block format is equivalent to the ANSI X9.8, VISA-1, and ECI-1 PIN block
  formats. It is similar to a VISA-4 PIN block format. It supports a PIN from 4 to 12 digits
  in length. The ISO_Format_3 PIN block format is the same as ISO_Format_0 except that the
  fill digits are random values from 10 to 15.
- `primary_account_number`: The Primary Account Number (PAN), a unique identifier for a
  payment credit or debit card that associates the card with a specific account holder.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"PinDataLength"`: The length of PIN under generation.
"""
generate_pin_data(
    EncryptionKeyIdentifier,
    GenerationAttributes,
    GenerationKeyIdentifier,
    PinBlockFormat,
    PrimaryAccountNumber;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/pindata/generate",
    Dict{String,Any}(
        "EncryptionKeyIdentifier" => EncryptionKeyIdentifier,
        "GenerationAttributes" => GenerationAttributes,
        "GenerationKeyIdentifier" => GenerationKeyIdentifier,
        "PinBlockFormat" => PinBlockFormat,
        "PrimaryAccountNumber" => PrimaryAccountNumber,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function generate_pin_data(
    EncryptionKeyIdentifier,
    GenerationAttributes,
    GenerationKeyIdentifier,
    PinBlockFormat,
    PrimaryAccountNumber,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/pindata/generate",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "EncryptionKeyIdentifier" => EncryptionKeyIdentifier,
                    "GenerationAttributes" => GenerationAttributes,
                    "GenerationKeyIdentifier" => GenerationKeyIdentifier,
                    "PinBlockFormat" => PinBlockFormat,
                    "PrimaryAccountNumber" => PrimaryAccountNumber,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    re_encrypt_data(cipher_text, incoming_encryption_attributes, incoming_key_identifier, outgoing_encryption_attributes, outgoing_key_identifier)
    re_encrypt_data(cipher_text, incoming_encryption_attributes, incoming_key_identifier, outgoing_encryption_attributes, outgoing_key_identifier, params::Dict{String,<:Any})

Re-encrypt ciphertext using DUKPT, Symmetric and Asymmetric Data Encryption Keys.  You can
either generate an encryption key within Amazon Web Services Payment Cryptography by
calling CreateKey or import your own encryption key by calling ImportKey. The KeyArn for
use with this operation must be in a compatible key state with KeyModesOfUse set to
Encrypt. In asymmetric encryption, ciphertext is encrypted using public component (imported
by calling ImportKey) of the asymmetric key pair created outside of Amazon Web Services
Payment Cryptography.  For symmetric and DUKPT encryption, Amazon Web Services Payment
Cryptography supports TDES and AES algorithms. For asymmetric encryption, Amazon Web
Services Payment Cryptography supports RSA. To encrypt using DUKPT, a DUKPT key must
already exist within your account with KeyModesOfUse set to DeriveKey or a new DUKPT can be
generated by calling CreateKey. For information about valid keys for this operation, see
Understanding key attributes and Key types for specific data operations in the Amazon Web
Services Payment Cryptography User Guide.   Cross-account use: This operation can't be used
across different Amazon Web Services accounts.  Related operations:     DecryptData
EncryptData     GetPublicCertificate     ImportKey

# Arguments
- `cipher_text`: Ciphertext to be encrypted. The minimum allowed length is 16 bytes and
  maximum allowed length is 4096 bytes.
- `incoming_encryption_attributes`: The attributes and values for incoming ciphertext.
- `incoming_key_identifier`: The keyARN of the encryption key of incoming ciphertext data.
- `outgoing_encryption_attributes`: The attributes and values for outgoing ciphertext data
  after encryption by Amazon Web Services Payment Cryptography.
- `outgoing_key_identifier`: The keyARN of the encryption key of outgoing ciphertext data
  after encryption by Amazon Web Services Payment Cryptography.

"""
re_encrypt_data(
    CipherText,
    IncomingEncryptionAttributes,
    IncomingKeyIdentifier,
    OutgoingEncryptionAttributes,
    OutgoingKeyIdentifier;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/keys/$(IncomingKeyIdentifier)/reencrypt",
    Dict{String,Any}(
        "CipherText" => CipherText,
        "IncomingEncryptionAttributes" => IncomingEncryptionAttributes,
        "OutgoingEncryptionAttributes" => OutgoingEncryptionAttributes,
        "OutgoingKeyIdentifier" => OutgoingKeyIdentifier,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function re_encrypt_data(
    CipherText,
    IncomingEncryptionAttributes,
    IncomingKeyIdentifier,
    OutgoingEncryptionAttributes,
    OutgoingKeyIdentifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/keys/$(IncomingKeyIdentifier)/reencrypt",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "CipherText" => CipherText,
                    "IncomingEncryptionAttributes" => IncomingEncryptionAttributes,
                    "OutgoingEncryptionAttributes" => OutgoingEncryptionAttributes,
                    "OutgoingKeyIdentifier" => OutgoingKeyIdentifier,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    translate_pin_data(encrypted_pin_block, incoming_key_identifier, incoming_translation_attributes, outgoing_key_identifier, outgoing_translation_attributes)
    translate_pin_data(encrypted_pin_block, incoming_key_identifier, incoming_translation_attributes, outgoing_key_identifier, outgoing_translation_attributes, params::Dict{String,<:Any})

Translates encrypted PIN block from and to ISO 9564 formats 0,1,3,4. For more information,
see Translate PIN data in the Amazon Web Services Payment Cryptography User Guide. PIN
block translation involves changing the encrytion of PIN block from one encryption key to
another encryption key and changing PIN block format from one to another without PIN block
data leaving Amazon Web Services Payment Cryptography. The encryption key transformation
can be from PEK (Pin Encryption Key) to BDK (Base Derivation Key) for DUKPT or from BDK for
DUKPT to PEK. Amazon Web Services Payment Cryptography supports TDES and AES key derivation
type for DUKPT tranlations. You can use this operation for P2PE (Point to Point Encryption)
use cases where the encryption keys should change but the processing system either does not
need to, or is not permitted to, decrypt the data. The allowed combinations of PIN block
format translations are guided by PCI. It is important to note that not all encrypted PIN
block formats (example, format 1) require PAN (Primary Account Number) as input. And as
such, PIN block format that requires PAN (example, formats 0,3,4) cannot be translated to a
format (format 1) that does not require a PAN for generation.  For information about valid
keys for this operation, see Understanding key attributes and Key types for specific data
operations in the Amazon Web Services Payment Cryptography User Guide.  At this time,
Amazon Web Services Payment Cryptography does not support translations to PIN format 4.
Cross-account use: This operation can't be used across different Amazon Web Services
accounts.  Related operations:     GeneratePinData     VerifyPinData

# Arguments
- `encrypted_pin_block`: The encrypted PIN block data that Amazon Web Services Payment
  Cryptography translates.
- `incoming_key_identifier`: The keyARN of the encryption key under which incoming PIN
  block data is encrypted. This key type can be PEK or BDK.
- `incoming_translation_attributes`: The format of the incoming PIN block data for
  tranlation within Amazon Web Services Payment Cryptography.
- `outgoing_key_identifier`: The keyARN of the encryption key for encrypting outgoing PIN
  block data. This key type can be PEK or BDK.
- `outgoing_translation_attributes`: The format of the outgoing PIN block data after
  tranlation by Amazon Web Services Payment Cryptography.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"IncomingDukptAttributes"`: The attributes and values to use for incoming DUKPT
  encryption key for PIN block tranlation.
- `"OutgoingDukptAttributes"`: The attributes and values to use for outgoing DUKPT
  encryption key after PIN block translation.
"""
translate_pin_data(
    EncryptedPinBlock,
    IncomingKeyIdentifier,
    IncomingTranslationAttributes,
    OutgoingKeyIdentifier,
    OutgoingTranslationAttributes;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/pindata/translate",
    Dict{String,Any}(
        "EncryptedPinBlock" => EncryptedPinBlock,
        "IncomingKeyIdentifier" => IncomingKeyIdentifier,
        "IncomingTranslationAttributes" => IncomingTranslationAttributes,
        "OutgoingKeyIdentifier" => OutgoingKeyIdentifier,
        "OutgoingTranslationAttributes" => OutgoingTranslationAttributes,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function translate_pin_data(
    EncryptedPinBlock,
    IncomingKeyIdentifier,
    IncomingTranslationAttributes,
    OutgoingKeyIdentifier,
    OutgoingTranslationAttributes,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/pindata/translate",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "EncryptedPinBlock" => EncryptedPinBlock,
                    "IncomingKeyIdentifier" => IncomingKeyIdentifier,
                    "IncomingTranslationAttributes" => IncomingTranslationAttributes,
                    "OutgoingKeyIdentifier" => OutgoingKeyIdentifier,
                    "OutgoingTranslationAttributes" => OutgoingTranslationAttributes,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    verify_auth_request_cryptogram(auth_request_cryptogram, key_identifier, major_key_derivation_mode, session_key_derivation_attributes, transaction_data)
    verify_auth_request_cryptogram(auth_request_cryptogram, key_identifier, major_key_derivation_mode, session_key_derivation_attributes, transaction_data, params::Dict{String,<:Any})

Verifies Authorization Request Cryptogram (ARQC) for a EMV chip payment card authorization.
For more information, see Verify auth request cryptogram in the Amazon Web Services Payment
Cryptography User Guide. ARQC generation is done outside of Amazon Web Services Payment
Cryptography and is typically generated on a point of sale terminal for an EMV chip card to
obtain payment authorization during transaction time. For ARQC verification, you must first
import the ARQC generated outside of Amazon Web Services Payment Cryptography by calling
ImportKey. This operation uses the imported ARQC and an major encryption key (DUKPT)
created by calling CreateKey to either provide a boolean ARQC verification result or
provide an APRC (Authorization Response Cryptogram) response using Method 1 or Method 2.
The ARPC_METHOD_1 uses AuthResponseCode to generate ARPC and ARPC_METHOD_2 uses
CardStatusUpdate to generate ARPC.  For information about valid keys for this operation,
see Understanding key attributes and Key types for specific data operations in the Amazon
Web Services Payment Cryptography User Guide.  Cross-account use: This operation can't be
used across different Amazon Web Services accounts.  Related operations:
VerifyCardValidationData     VerifyPinData

# Arguments
- `auth_request_cryptogram`: The auth request cryptogram imported into Amazon Web Services
  Payment Cryptography for ARQC verification using a major encryption key and transaction
  data.
- `key_identifier`: The keyARN of the major encryption key that Amazon Web Services Payment
  Cryptography uses for ARQC verification.
- `major_key_derivation_mode`: The method to use when deriving the major encryption key for
  ARQC verification within Amazon Web Services Payment Cryptography. The same key derivation
  mode was used for ARQC generation outside of Amazon Web Services Payment Cryptography.
- `session_key_derivation_attributes`: The attributes and values to use for deriving a
  session key for ARQC verification within Amazon Web Services Payment Cryptography. The same
  attributes were used for ARQC generation outside of Amazon Web Services Payment
  Cryptography.
- `transaction_data`: The transaction data that Amazon Web Services Payment Cryptography
  uses for ARQC verification. The same transaction is used for ARQC generation outside of
  Amazon Web Services Payment Cryptography.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"AuthResponseAttributes"`: The attributes and values for auth request cryptogram
  verification. These parameters are required in case using ARPC Method 1 or Method 2 for
  ARQC verification.
"""
verify_auth_request_cryptogram(
    AuthRequestCryptogram,
    KeyIdentifier,
    MajorKeyDerivationMode,
    SessionKeyDerivationAttributes,
    TransactionData;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/cryptogram/verify",
    Dict{String,Any}(
        "AuthRequestCryptogram" => AuthRequestCryptogram,
        "KeyIdentifier" => KeyIdentifier,
        "MajorKeyDerivationMode" => MajorKeyDerivationMode,
        "SessionKeyDerivationAttributes" => SessionKeyDerivationAttributes,
        "TransactionData" => TransactionData,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function verify_auth_request_cryptogram(
    AuthRequestCryptogram,
    KeyIdentifier,
    MajorKeyDerivationMode,
    SessionKeyDerivationAttributes,
    TransactionData,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/cryptogram/verify",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "AuthRequestCryptogram" => AuthRequestCryptogram,
                    "KeyIdentifier" => KeyIdentifier,
                    "MajorKeyDerivationMode" => MajorKeyDerivationMode,
                    "SessionKeyDerivationAttributes" => SessionKeyDerivationAttributes,
                    "TransactionData" => TransactionData,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    verify_card_validation_data(key_identifier, primary_account_number, validation_data, verification_attributes)
    verify_card_validation_data(key_identifier, primary_account_number, validation_data, verification_attributes, params::Dict{String,<:Any})

Verifies card-related validation data using algorithms such as Card Verification Values
(CVV/CVV2), Dynamic Card Verification Values (dCVV/dCVV2) and Card Security Codes (CSC).
For more information, see Verify card data in the Amazon Web Services Payment Cryptography
User Guide. This operation validates the CVV or CSC codes that is printed on a payment
credit or debit card during card payment transaction. The input values are typically
provided as part of an inbound transaction to an issuer or supporting platform partner.
Amazon Web Services Payment Cryptography uses CVV or CSC, PAN (Primary Account Number) and
expiration date of the card to check its validity during transaction processing. In this
operation, the CVK (Card Verification Key) encryption key for use with card data
verification is same as the one in used for GenerateCardValidationData.  For information
about valid keys for this operation, see Understanding key attributes and Key types for
specific data operations in the Amazon Web Services Payment Cryptography User Guide.
Cross-account use: This operation can't be used across different Amazon Web Services
accounts.  Related operations:     GenerateCardValidationData
VerifyAuthRequestCryptogram     VerifyPinData

# Arguments
- `key_identifier`: The keyARN of the CVK encryption key that Amazon Web Services Payment
  Cryptography uses to verify card data.
- `primary_account_number`: The Primary Account Number (PAN), a unique identifier for a
  payment credit or debit card that associates the card with a specific account holder.
- `validation_data`: The CVV or CSC value for use for card data verification within Amazon
  Web Services Payment Cryptography.
- `verification_attributes`: The algorithm to use for verification of card data within
  Amazon Web Services Payment Cryptography.

"""
verify_card_validation_data(
    KeyIdentifier,
    PrimaryAccountNumber,
    ValidationData,
    VerificationAttributes;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/cardvalidationdata/verify",
    Dict{String,Any}(
        "KeyIdentifier" => KeyIdentifier,
        "PrimaryAccountNumber" => PrimaryAccountNumber,
        "ValidationData" => ValidationData,
        "VerificationAttributes" => VerificationAttributes,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function verify_card_validation_data(
    KeyIdentifier,
    PrimaryAccountNumber,
    ValidationData,
    VerificationAttributes,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/cardvalidationdata/verify",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "KeyIdentifier" => KeyIdentifier,
                    "PrimaryAccountNumber" => PrimaryAccountNumber,
                    "ValidationData" => ValidationData,
                    "VerificationAttributes" => VerificationAttributes,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    verify_mac(key_identifier, mac, message_data, verification_attributes)
    verify_mac(key_identifier, mac, message_data, verification_attributes, params::Dict{String,<:Any})

Verifies a Message Authentication Code (MAC).  You can use this operation when keys won't
be shared but mutual data is present on both ends for validation. In this case, known data
values are used to generate a MAC on both ends for verification without sending or
receiving data in ciphertext or plaintext. You can use this operation to verify a DUPKT,
HMAC or EMV MAC by setting generation attributes and algorithm to the associated values.
Use the same encryption key for MAC verification as you use for GenerateMac.  For
information about valid keys for this operation, see Understanding key attributes and Key
types for specific data operations in the Amazon Web Services Payment Cryptography User
Guide.   Cross-account use: This operation can't be used across different Amazon Web
Services accounts.  Related operations:     GenerateMac

# Arguments
- `key_identifier`: The keyARN of the encryption key that Amazon Web Services Payment
  Cryptography uses to verify MAC data.
- `mac`: The MAC being verified.
- `message_data`: The data on for which MAC is under verification.
- `verification_attributes`: The attributes and data values to use for MAC verification
  within Amazon Web Services Payment Cryptography.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"MacLength"`: The length of the MAC.
"""
verify_mac(
    KeyIdentifier,
    Mac,
    MessageData,
    VerificationAttributes;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/mac/verify",
    Dict{String,Any}(
        "KeyIdentifier" => KeyIdentifier,
        "Mac" => Mac,
        "MessageData" => MessageData,
        "VerificationAttributes" => VerificationAttributes,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function verify_mac(
    KeyIdentifier,
    Mac,
    MessageData,
    VerificationAttributes,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/mac/verify",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "KeyIdentifier" => KeyIdentifier,
                    "Mac" => Mac,
                    "MessageData" => MessageData,
                    "VerificationAttributes" => VerificationAttributes,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end

"""
    verify_pin_data(encrypted_pin_block, encryption_key_identifier, pin_block_format, primary_account_number, verification_attributes, verification_key_identifier)
    verify_pin_data(encrypted_pin_block, encryption_key_identifier, pin_block_format, primary_account_number, verification_attributes, verification_key_identifier, params::Dict{String,<:Any})

Verifies pin-related data such as PIN and PIN Offset using algorithms including VISA PVV
and IBM3624. For more information, see Verify PIN data in the Amazon Web Services Payment
Cryptography User Guide. This operation verifies PIN data for user payment card. A card
holder PIN data is never transmitted in clear to or from Amazon Web Services Payment
Cryptography. This operation uses PIN Verification Key (PVK) for PIN or PIN Offset
generation and then encrypts it using PIN Encryption Key (PEK) to create an
EncryptedPinBlock for transmission from Amazon Web Services Payment Cryptography.  For
information about valid keys for this operation, see Understanding key attributes and Key
types for specific data operations in the Amazon Web Services Payment Cryptography User
Guide.   Cross-account use: This operation can't be used across different Amazon Web
Services accounts.  Related operations:     GeneratePinData     TranslatePinData

# Arguments
- `encrypted_pin_block`: The encrypted PIN block data that Amazon Web Services Payment
  Cryptography verifies.
- `encryption_key_identifier`: The keyARN of the encryption key under which the PIN block
  data is encrypted. This key type can be PEK or BDK.
- `pin_block_format`: The PIN encoding format for pin data generation as specified in ISO
  9564. Amazon Web Services Payment Cryptography supports ISO_Format_0 and ISO_Format_3. The
  ISO_Format_0 PIN block format is equivalent to the ANSI X9.8, VISA-1, and ECI-1 PIN block
  formats. It is similar to a VISA-4 PIN block format. It supports a PIN from 4 to 12 digits
  in length. The ISO_Format_3 PIN block format is the same as ISO_Format_0 except that the
  fill digits are random values from 10 to 15.
- `primary_account_number`: The Primary Account Number (PAN), a unique identifier for a
  payment credit or debit card that associates the card with a specific account holder.
- `verification_attributes`: The attributes and values for PIN data verification.
- `verification_key_identifier`: The keyARN of the PIN verification key.

# Optional Parameters
Optional parameters can be passed as a `params::Dict{String,<:Any}`. Valid keys are:
- `"DukptAttributes"`: The attributes and values for the DUKPT encrypted PIN block data.
- `"PinDataLength"`: The length of PIN being verified.
"""
verify_pin_data(
    EncryptedPinBlock,
    EncryptionKeyIdentifier,
    PinBlockFormat,
    PrimaryAccountNumber,
    VerificationAttributes,
    VerificationKeyIdentifier;
    aws_config::AbstractAWSConfig=global_aws_config(),
) = payment_cryptography_data(
    "POST",
    "/pindata/verify",
    Dict{String,Any}(
        "EncryptedPinBlock" => EncryptedPinBlock,
        "EncryptionKeyIdentifier" => EncryptionKeyIdentifier,
        "PinBlockFormat" => PinBlockFormat,
        "PrimaryAccountNumber" => PrimaryAccountNumber,
        "VerificationAttributes" => VerificationAttributes,
        "VerificationKeyIdentifier" => VerificationKeyIdentifier,
    );
    aws_config=aws_config,
    feature_set=SERVICE_FEATURE_SET,
)
function verify_pin_data(
    EncryptedPinBlock,
    EncryptionKeyIdentifier,
    PinBlockFormat,
    PrimaryAccountNumber,
    VerificationAttributes,
    VerificationKeyIdentifier,
    params::AbstractDict{String};
    aws_config::AbstractAWSConfig=global_aws_config(),
)
    return payment_cryptography_data(
        "POST",
        "/pindata/verify",
        Dict{String,Any}(
            mergewith(
                _merge,
                Dict{String,Any}(
                    "EncryptedPinBlock" => EncryptedPinBlock,
                    "EncryptionKeyIdentifier" => EncryptionKeyIdentifier,
                    "PinBlockFormat" => PinBlockFormat,
                    "PrimaryAccountNumber" => PrimaryAccountNumber,
                    "VerificationAttributes" => VerificationAttributes,
                    "VerificationKeyIdentifier" => VerificationKeyIdentifier,
                ),
                params,
            ),
        );
        aws_config=aws_config,
        feature_set=SERVICE_FEATURE_SET,
    )
end
