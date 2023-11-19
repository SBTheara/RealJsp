<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title> JSP - Hello World </title>
    <script src="https://cdn.jsdelivr.net/npm/vue@2.7.14/dist/vue.js"></script>
</head>
<body>
    <div id="root">
        <input type="text" name="name" v-model="name"><br><br>
        <input type="text" name="gender" v-model="gender"><br><br>
        <input type="text" name="score" v-model="score"><br><br>
        <button @click="getInfo">Submit</button>
        <p> {{ name }} </p>
    </div>
    <script>
        import Vue from "vue";

        new Vue({
            el:"#root",
            data:{
                name:"",
                gender:"",
                score:""
            },
            methods:{
                getInfo(){
                    this.name="Theara"
                }
            }
        });
    </script>
</body>
</html>