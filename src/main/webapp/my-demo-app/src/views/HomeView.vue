<template>
  <v-card class="mt-4 mx-auto">
    <v-sheet class="v-sheet--offset mx-auto" color="cyan" elevation="12" max-width="calc(100% - 32px)">
      <v-sparkline :labels="labels" :value="value" color="white" line-width="2" padding="16"></v-sparkline>
    </v-sheet>

    <v-card-text class="pt-0">
      <div class="text-h6 font-weight-light mb-2">
        Statistics of Sale
      </div>
      <div class="subheading font-weight-light grey--text">
        <input type="text" name="" id="" placeholder="Input the data of statistics">
      </div>
      <v-divider class="my-2"></v-divider>
      <v-icon class="mr-2" small>
        mdi-clock
      </v-icon>
      <span class="text-caption grey--text font-weight-light">last registration 26 minutes ago</span><br><br>
      <div class="text-h6 font-weight-light mb-2">
        Please select date
      </div>
      <v-row>
        <v-date-picker v-model="date" full-width class="mt-4"></v-date-picker>
      </v-row>

    </v-card-text>
  </v-card>
</template>

<script>
export default {
  data: () => ({
    labels: [
      '12am',
      '3am',
      '6am',
      '9am',
      '12pm',
      '3pm',
      '6pm',
      '9pm',
    ],
    value: [
      200,
      675,
      410,
      390,
      310,
      460,
      250,
      240,
    ],
    date: (new Date(Date.now() - (new Date()).getTimezoneOffset() * 60000)).toISOString().substr(0, 10),
  }),
}
</script>

<style>
.v-sheet--offset {
  top: 0px;
  width: 100vw;
  position: relative;
}

.pt-0 {
  top: 20px;
  height: 100vh;
  position: relative;
}

.mt-4 {
  padding: 10px;
  width: 100vw;
  align-tracks: center;
}
</style>
