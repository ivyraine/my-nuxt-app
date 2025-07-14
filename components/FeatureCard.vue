<!-- components/FeatureCard.vue -->
<template>
  <div class="bg-white rounded-xl shadow-lg p-6 text-center hover:shadow-xl transition-shadow">
    <div class="text-4xl mb-4">{{ icon }}</div>
    <h3 class="text-xl font-semibold text-gray-800 mb-3">{{ title }}</h3>
    <p class="text-gray-600 leading-relaxed">{{ description }}</p>
  </div>
</template>

<script setup lang="ts">
// 定義 props
interface Props {
  icon: string
  title: string
  description: string
}

defineProps<Props>()
</script>