accumulo:
  version: 1.5.1
  source_url: http://apache.osuosl.org/accumulo/1.5.1/accumulo-1.5.1-bin.tar.gz
  config:
    instance_name: accumulo
    log_level: DEBUG
    log_root: /mnt/accumulo/log
    walogs: /mnt/accumulo/walogs
    memory_profile: 3G
    source_url: http://www.woitasen.com.ar/jdk-7u45-linux-x64.tar.gz
    source_hash: md5=92f56f903483750818ffc3a4f41fe779
    version_name: jdk1.7.0_45
    accumulo-site:
      table.cache.block.enable:
        value: 'true'
      table.cache.index.enable:
        value: 'true'
      trace.user:
        value: root
      crypto.module.class:
        value: org.apache.accumulo.core.security.crypto.DefaultCryptoModule
      crypto.cipher.suite:
        value: AES/CFB/NoPadding
      crypto.cipher.algorithm.name:
        value: AES
      crypto.cipher.key.length:
        value: 128
      crypto.secure.rng:
        value: SHA1PRNG
      crypto.secure.rng.provider:
        value: SUN
      crypto.secret.key.encryption.strategy.class:
        value: org.apache.accumulo.core.security.crypto.CachingHDFSSecretKeyEncryptionStrategy
      crypto.default.key.strategy.cipher.suite:
        value: AES/ECB/NoPadding
