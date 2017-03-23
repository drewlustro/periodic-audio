<template>
  <div class="static-wrapper">
    <h1>{{ pageTitle }}</h1>
    <br><br>
    <p>
      Waistcoat humblebrag kickstarter green juice cold-pressed. Four dollar toast organic edison bulb four loko, +1 literally deep v gluten-free sustainable enamel pin. Pitchfork farm-to-table pour-over lumbersexual trust fund. Food truck semiotics woke raclette, cronut chambray try-hard tacos venmo small batch meditation actually hexagon. Poutine ennui snackwave single-origin coffee prism. Beard ramps mustache, brunch cornhole blog chicharrones. Raw denim gochujang YOLO normcore, fam raclette mlkshk forage pinterest godard.
    </p>
    <p>
      Yuccie VHS semiotics, seitan chillwave everyday carry tbh blog ramps mustache gentrify. Master cleanse trust fund vegan VHS keffiyeh fixie, YOLO enamel pin portland franzen. Selfies poutine cred echo park you probably haven't heard of them neutra, pabst butcher lomo raw denim bespoke listicle. Intelligentsia typewriter poke cornhole, pork belly plaid heirloom ugh. Hella 3 wolf moon crucifix messenger bag, food truck pabst banjo selfies lomo kickstarter bespoke fixie. Flannel lyft keytar pinterest. Pitchfork celiac hell of tacos, four loko leggings helvetica woke la croix cornhole photo booth blue bottle direct trade wayfarers franzen.
    </p>
    <p>
      Umami cornhole semiotics, artisan tumblr lumbersexual man bun neutra. Jianbing williamsburg roof party vice freegan 90's. Prism paleo subway tile, blog tacos glossier VHS. Synth skateboard tattooed, normcore neutra ennui listicle portland taxidermy. Authentic pinterest pour-over viral. Meh kitsch vaporware pug jean shorts, four loko flexitarian kinfolk synth brooklyn small batch biodiesel paleo waistcoat aesthetic. Selvage you probably haven't heard of them sriracha, franzen kitsch VHS truffaut hoodie 8-bit meh twee blog.
    </p>
    <p>
      Tousled marfa microdosing flexitarian readymade pitchfork. Quinoa air plant next level master cleanse cardigan tumblr man braid, tumeric freegan brooklyn photo booth vice health goth viral woke. Kickstarter raw denim austin hoodie, stumptown +1 selvage marfa. Pabst try-hard pop-up brooklyn, taxidermy ennui food truck man braid biodiesel meh. Jianbing cardigan bespoke, health goth tbh affogato salvia pop-up roof party gochujang organic try-hard cornhole yuccie offal. Twee jianbing neutra pabst gochujang. Seitan butcher chillwave bitters, lo-fi stumptown cold-pressed twee activated charcoal selvage.
    </p>
    <copyright></copyright>
  </div>
</template>

<script>

import Copyright from 'components/Copyright'

export default {
  name: 'faq',
  components: {
    Copyright
  },
  props: {
    slug: {
      type: String,
      required: true
    }
  },
  computed: {
    pageTitle () {
      return `${this.slug[0].toUpperCase()}${this.slug.substr(1)}`
    }
  },
  methods: {

  }
}
</script>

<style lang="sass">

</style>
