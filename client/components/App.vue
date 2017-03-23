<template>
  <div id="app">
    <nav class="nav-primary">
      <router-link :to="{ name: 'home' }" class="logo-rect"><img src="/images/logo-rect.png" ></router-link>
      <img src="/images/elements/mg.png" class="element-card" alt="">
      <img src="/images/elements/ti.png" class="element-card" alt="">
      <img src="/images/elements/be.png" class="element-card" alt="">
    </nav>

    <!-- <div class="hr"></div> -->

    <b-navbar toggleable>
      <div class="container">
        <b-nav-toggle target="nav_collapse_1"></b-nav-toggle>
<!--           <a class="navbar-brand" href="/">
            <span>Periodic Audio</span>
        </a> -->

        <b-collapse is-nav id="nav_collapse_1">
            <b-nav is-nav-bar>
                <b-nav-item :to="{ name: 'static', params: { slug: 'shop' }}">Shop</b-nav-item>
            </b-nav>
            <b-nav is-nav-bar class="ml-auto">
                <b-nav-item-dropdown text="Technology" right-alignment>
                    <router-link :to="{ name: 'faq' }" class="dropdown-item">
                        FAQ
                    </router-link>
                    <router-link :to="{ name: 'static', params: { slug: 'glossary' }}" class="dropdown-item">
                        Glossary
                    </router-link>
                    <a href="http://www.periodicaudio.com/PAIJournal/category/iems/" target="_blank" rel="noopener" class="dropdown-item">
                        Tech Journal
                    </a>
                </b-nav-item-dropdown>
                <b-nav-item-dropdown right-alignment>
                    <template slot="text">
                        <span>Company</span>
                    </template>
                    <router-link :to="{ name: 'static', params: { slug: 'contact' }}" class="dropdown-item">
                        Contact
                    </router-link>
                    <router-link :to="{ name: 'static', params: { slug: 'press' }}" class="dropdown-item">
                        Press
                    </router-link>
                    <router-link :to="{ name: 'static', params: { slug: 'about' }}" class="dropdown-item">
                        About
                    </router-link>
                </b-nav-item-dropdown>
            </b-nav>
        </b-collapse>
      </div>
    </b-navbar>

    <div class="hr"></div>

    <section class="content">
      <router-view></router-view>
    </section>
  </div>
</template>

<style lang="sass">

@import ~normalize.css/normalize.css
@import ~styles/common
@import ~styles/main

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
      max-width: 222px

.element-card
  flex-grow: 0
  flex-shrink: 0

  width: auto
  height: auto
  max-width: (260px / 2)
  max-height: (417px / 2)


section.content
  max-width: 1080px
  margin-top: 4em
  margin-left: auto
  margin-right: auto


.dropdown-menu
  border-radius: 0 !important
  padding: 0 !important


</style>
