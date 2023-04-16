plugins {
    id("java")
}

group = "com.baomidou.plugin.idea.mybatisx"
version = "1.5.5"

repositories {
    mavenLocal()
    maven { url = uri("https://maven.aliyun.com/repository/public/") }
    mavenCentral()
    maven { url = uri("https://plugins.gradle.org/m2/") }
    maven { url = uri("https://oss.sonatype.org/content/repositories/releases/") }
    maven { url = uri("https://dl.bintray.com/jetbrains/intellij-plugin-service") }
    maven { url = uri("https://dl.bintray.com/jetbrains/intellij-third-party-dependencies/") }
}

dependencies {
    implementation("com.baomidou:mybatis-plus-generator:3.5.1")
    implementation("org.freemarker:freemarker:2.3.31")
    implementation("org.projectlombok:lombok:1.18.0")
    implementation("mysql:mysql-connector-java:8.0.13")
    implementation("com.baomidou:mybatis-plus-boot-starter:3.4.0")
    implementation("org.springframework.boot:spring-boot-starter-web:2.6.3")
    compileOnly("com.intellij:annotations:+@jar")

    testImplementation(platform("org.junit:junit-bom:5.9.1"))
    testImplementation("org.junit.jupiter:junit-jupiter")
}

tasks.test {
    useJUnitPlatform()
}
