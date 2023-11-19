<template>
    <v-card min-height="100%" class="mx-auto">
        <v-text-field v-model="newTaskTitle" @click:append="addNewTask" @keyup.enter="addNewTask" class="pa-4"
            variant="underlined" label="Append inner" append-icon="mdi-send-circle" hide-details clearable></v-text-field>
        <v-list subheader two-line flat>
            <v-subheader>Task list</v-subheader>
            <div v-for="task in tasks" :key="task.id">
                <v-list-item @click="isDone(task.id)" :class="{ 'purple lighten-4': task.done }">
                    <template v-slot:default>
                        <v-list-item-action>
                            <v-checkbox :input-value="task.done" color="primary"></v-checkbox>
                        </v-list-item-action>

                        <v-list-item-content>
                            <v-list-item-title :class="{ 'text-decoration-line-through': task.done }">{{ task.name
                            }}</v-list-item-title>
                            <v-list-item-subtitle>{{ task.subtitle }}</v-list-item-subtitle>
                        </v-list-item-content>

                        <v-list-item-action>
                            <v-icon @click.stop="getInfo(task.id)">mdi-information</v-icon>
                        </v-list-item-action>

                    </template>
                </v-list-item>
            </div>
        </v-list>
    </v-card>
</template>
<script>
export default {
    data() {
        return {
            newTaskTitle: "",
            tasks: [
                {
                    id: 1,
                    name: "What have i done?",
                    subtitle: "Allow notification",
                    done: false,
                },
                {
                    id: 2,
                    name: "What do you do?",
                    subtitle: "Allow notification",
                    done: false,
                },
                {
                    id: 3,
                    name: "How do you do?",
                    subtitle: "Allow notification",
                    done: false,
                },
            ],
        }
    },
    methods: {
        addNewTask() {
            this.tasks.push(
                {
                    id: Date.now,
                    name: this.newTaskTitle,
                    subtitle: "Allow notification",
                    done: false,
                },
            ),
                this.newTaskTitle = ''
        },
        isDone(id) {
            let taskToDo = this.tasks.filter(task => task.id === id)[0]
            taskToDo.done = !taskToDo.done
        },
        getInfo(id) {
            if (id === 1) {
                alert('I do nothing');
            }
            if (id === 2) {
                alert('You do nothing');
            }
            if (id === 3) {
                alert('Hello');
            }
        }
    }
}
</script>