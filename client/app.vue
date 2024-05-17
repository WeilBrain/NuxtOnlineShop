<template>
  <div>
    <div v-if="loading" class="loading">
      <span class="loading-text">Loading...</span>
      <div class="content">
        <div class="player_one"></div>
        <div class="player_two"></div>
        <div class="ball"></div>
      </div>
    </div>

    <NuxtLayout>
      <NuxtPage />
    </NuxtLayout>
  </div>
</template>

<script setup lang="ts">
import './assets/css/global.css';

const nuxtApp = useNuxtApp();
const loading = ref(true);

nuxtApp.hook("page:finish", () => {
  loading.value = false;
});


</script>

<style lang="scss" scoped>
.loading {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  background-color: black;
  z-index: 9999;
}
.loading-text{
  margin-bottom: 20rem;
  font-size: 1.8rem;
  color: #FFFFFF;
}


.content {
  position: absolute;
  top: 50%;
  left: 54%;
  transform: translate(-50%, -50%);
  display: block;
}

.paddle{
  height:40px;
  width:3px;
  background-color:white;
  position:relative;
}

.player_one{
  @extend .paddle;
  left:-180px;
  animation: movePaddleOne 4s infinite;
}

.player_two{
  @extend .paddle;
  left:20px;
  animation: movePaddleTwo 4s infinite;
}

.ball{
  position:relative;
  height:5px;
  width:5px;
  border-radius:50%;
  background-color:white;
  animation: moveBall 4s infinite linear;
}

@keyframes movePaddleOne{
  0%, 100%{
    transform:translate(0px, 100px);
  }
  25%{
    transform:translate(0px, 0px);
  }
  50%{
    transform:translate(0px, 0px);
  }
  75%{
    transform:translate(0px, 100px);
  }
}

@keyframes movePaddleTwo{
  0%, 100%{
    transform:translate(0px,-50px);
  }
  25%{
    transform:translate(0px,10px);
  }
  50%{
    transform:translate(0px,0px);
  }
  75%{
    transform:translate(0px,50px);
  }
}

@keyframes moveBall{
  0%, 100%{
    transform:translate(-180px, 30px);
  }
  25%{
    transform:translate(18px, -25px);
  }
  50%{
    transform:translate(-180px, -55px);
  }
  75%{
    transform:translate(18px, 15px);
  }
}

@media (max-width: 480px){
  .content {
    top: 50%;
    left: 70%;
  }

}
</style>
