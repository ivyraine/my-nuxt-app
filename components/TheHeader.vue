<template>
  <nav>
    <div class="logo"> TEST TEST</div>
    <div class="header">
      <a><NuxtLink to="/">首頁</NuxtLink></a>
      <a><NuxtLink to="/about">關於我們</NuxtLink></a>
      <a><NuxtLink to="/contact">聯絡我們</NuxtLink></a>
    </div>
  </nav>
</template>

<style scoped>

nav { 
  max-width: 1200px;
  height: 60px;
  line-height: 60px;
  padding: 0 20px;
  
  display: flex;
  justify-content: space-between;
  margin: 0 auto;
}

.logo {
  font-weight: bold;
  font-size: 24px;
}

.header {
  display: flex;
  gap: 20px;
}

a {
  text-decoration: none;
  color: black;
}

a:hover {
  color: blue;
}

</style>