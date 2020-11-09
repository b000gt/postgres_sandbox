# postgres_sandbox

Roles are created in [init.sql](./init.sql)

| User        | SELECT | CREATE |
| ----------- | ------ | ------ |
| guest1      | ✔      | ✔      |
| guest2      | ✘      | ✔      |
| guest3      | ✘      | ✔      |
| target role | ✔      | ✘      |

![output](./compose-output.PNG)