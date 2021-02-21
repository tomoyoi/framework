<template>
  <div>
    <p mt-10>Profile</p>
    <v-card flat>
      <v-container>
        <h2>お問い合わせ</h2>
        <v-form ref="form">
          <v-text-field
            v-model="contactForm.name"
            label="名前"
            required
          ></v-text-field>
          <v-text-field
            v-model="contactForm.email"
            label="メールアドレス"
            required
          ></v-text-field>
          <v-text-field
            v-model="contactForm.tel"
            label="電話番号"
          ></v-text-field>
          <v-textarea v-model="contactForm.message" label="内容"></v-textarea>
          <v-btn
            :loading="contactForm.loading"
            @click="createContact()"
            block
            large
            color="info"
            class="mt-4 font-weight-bold"
            >送信
          </v-btn>
        </v-form>
      </v-container>
    </v-card>
    <v-snackbar
      v-model="snackBar.show"
      :color="snackBar.color"
      bottom
      right
      :timeout="6000"
      class="font-weight-bold"
    >
      {{ snackBar.message }}
    </v-snackbar>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data: function () {
    return {
      contactForm: {
        name: "",
        tel: "",
        email: "",
        message: "",
        loading: false,
      },
      snackBar: {
        show: false,
        color: "",
        message: "",
      },
    };
  },
  methods: {
    showSnackBar(color, message) {
      this.snackBar.message = message;
      this.snackBar.color = color;
      this.snackBar.show = true;
    },
    formReset () {
      this.$refs.form.reset();
    },
    createContact() {
      const header = {
        "Content-Type": "application/json",
      };
      axios
        .post("/api/v1/contacts", {
          header,
          contact: this.contactForm,
        })
        .then(() => {
          this.formReset();
          this.showSnackBar(
            "success",
            "お問い合わせありがとうございます。送信完了しました"
          );
        })
        .catch((err) => {
          this.showSnackBar(
            "error",
            "送信に失敗しました。時間をおいて再度お試しください"
          );
          console.log(err);
        })
        .finally(() => {
          this.contactForm.loading = false;
        });
    }
  },
};
</script>

<style scoped>
p {
  margin-top: 250px;
  font-size: 2em;
  text-align: center;
}
</style>
