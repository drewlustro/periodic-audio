<template>
  <div id="app">
    <router-view></router-view>
  </div>
</template>

<style lang="sass">

@import ~styles/common
@import ~styles/main

a
  color: $charcoal

.hr
  display: block
  width: 100%
  height: 1px
  background-color: #ddd

.nav-primary
  display: flex
  flex-wrap: nowrap
  min-height: 208px
  height: 100%

  +respond-to(desktop-width)
    max-width: 1080px
    max-height: 30vh
    margin-left: auto
    margin-right: auto

  a
    color: $charcoal


.logo-rect
  flex-grow: 1
  flex-shrink: 1
  flex-basis: 100%
  padding: 2em 0

  +respond-to(desktop-width)
    img
      max-width: 20vw

.element-card
  flex-grow: 0
  flex-shrink: 0

  width: auto
  height: auto
  max-width: (260px / 1.5)
  max-height: (417px / 1.5)


section.content
  max-width: 1080px
  margin-top: 4em
  margin-left: auto
  margin-right: auto


.dropdown-menu
  border-radius: 0 !important
  padding: 0 !important


</style>
