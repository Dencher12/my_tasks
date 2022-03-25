Project.delete_all
Todo.delete_all

Project.seed(
  {
    title: "Семья",
    todos: Todo.seed(
      { text: "Купить молоко" },
      { text: "Заменить масло в двигателе до 23 апреля" },
      { text: "Отправить письмо бабушке", is_completed: true },
      { text: "Заплатить за квартиру" },
      { text: "Забрать обувь из ремонта" }
    )
  },
  {
    title: "Работа",
    todos: Todo.seed(
      { text: "Позвонить заказчику", is_completed: true },
      { text: "Отправить документы", is_completed: true },
      { text: "Заполнить отчет" },
    )
  },
  {
    title: "Прочее",
    todos: Todo.seed(
      { text: "Позвонить другу" },
      { text: "Подготовиться к поездке" }
    )
  },
)