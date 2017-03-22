<template>
  <div id="app">
    <nav>
      <router-link :to="{ name: 'home' }"><img src="/images/logo-rect.png" class="logo-rect"></router-link>
    </nav>
    <section class="content">
      <router-view></router-view>
    </section>
  </div>
</template>

<style lang="sass">
body
  margin: 0
  font-size: 1.2rem
  font-family: -apple-system, BlinkMacSystemFont, 'avenir next', avenir, helvetica, 'helvetica neue', Ubuntu, 'segoe ui', arial, sans-serif

img
  max-width: 100%

nav
  max-width: 1080px
  margin-left: auto
  margin-right: auto
  margin-bottom: 2em
  padding: 1em 0

section.content
  max-width: 1080px
  margin-left: auto
  margin-right: auto

.logo-rect
  max-width: 222px

</style>
