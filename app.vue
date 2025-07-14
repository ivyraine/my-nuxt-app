<!-- app.vue -->
<template>
  <div>
    <!-- 這裡會自動載入 pages 目錄中的頁面 -->
    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>

<script setup>
// 全域 head 設定
useHead({
  titleTemplate: '%s - MyNuxt',
  meta: [
    { charset: 'utf-8' },
    { name: 'viewport', content: 'width=device-width, initial-scale=1' },
    { name: 'format-detection', content: 'telephone=no' }
  ],
  link: [
    { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' }
  ]
})
</script>

<style>
@import '~/assets/css/main.css';

html {
  scroll-behavior: smooth;
}
</style>