<#if includeRealm>
apply plugin: 'realm-android'
</#if>
apply plugin: 'kotlin-kapt'

android {
  sourceSets {
      main.java.srcDirs += 'src/main/kotlin'
      test.java.srcDirs += 'src/test/kotlin'
      androidTest.java.srcDirs += 'src/androidTest/kotlin'
      main.kotlin.srcDirs += 'src/main/kotlin'
      test.kotlin.srcDirs += 'src/test/kotlin'
      androidTest.kotlin.srcDirs += 'src/androidTest/kotlin'  }

  compileOptions {
      sourceCompatibility JavaVersion.VERSION_1_8
      targetCompatibility JavaVersion.VERSION_1_8
  }
}

dependencies {
<#compress>
  kapt 'com.google.dagger:dagger-compiler:2.+'
</#compress>
}