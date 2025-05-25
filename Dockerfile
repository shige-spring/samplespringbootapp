FROM amazonlinux:2023

RUN dnf update -y && \
    dnf install -y \
    java-21-amazon-corretto-devel \
    findutils

# JAVA_HOME と PATH を設定
ENV JAVA_HOME /usr/lib/jvm/java-21-amazon-corretto
ENV PATH $JAVA_HOME/bin:$PATH

# 作業ディレクトリ
WORKDIR /app

# Gradleラッパーをコピー
COPY gradlew .
COPY gradle gradle

# ビルドに必要なファイルをコピー
COPY build.gradle .
COPY settings.gradle .
COPY src src

# 実行権限を付与
RUN chmod +x gradlew

# ビルド
RUN ./gradlew build -x test

# アプリ起動 (開発時)
CMD ["./gradlew", "bootRun"]
# CMD ["java", "-jar", "build/libs/samplespringbootapp-0.0.1-SNAPSHOT.jar"] # 本番用はこちらを残すことも検討
