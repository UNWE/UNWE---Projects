﻿namespace Canteen.Common
{
    public static class Constants
    {
        public const double WrapperSizeCoefficient = 0.9;
        // Login and register screen
        public const string InvalidLoginDataMessage = "Не са открити данни за потребителя. Моля опитайте отново!";
        public const string RequiredUsernameMessage = "Моля въведете потребителско име!";
        public const string RequiredFirstNameMessage = "Моля въведете първо име!";
        public const string RequiredLastNameMessage = "Моля въведете фамилия!";
        public const string RequiredPasswordMessage = "Моля въведете парола!";
        public const string UsernameTakenMessage = "Потребителското име вече съществува. Моля въведете отново!";
        public const string SuccessfulRegisterMessage = "Успешна регистрация";
        // About screen
        public const string AboutInformation =
            "Разработил: {0}{5}Факултетен номер: {1}{5}Специалнос: {2}{5}Поток: {3}{5}Група: {4}{5}";
        public const string RequiredProductNameMessage = "Моля въведете име на продукт";
        public const string RequiredMeasurementUnitMessage = "Моля въведетe мерна единица";
        public const string ProductNameToolTip = "Наимeнование на продукт";
        public const string MeasurementToolTip = "Мерна единица";
        public const string ConfirmCreateNewProductMessage = "Потвърждавате ли добяването на нов продукт?";
        public const string ConfimrButtonText = "Потърждаване";
        public const string NewProductCreatedSuccessfullyMessage = "Успешно добавихте нов продукт";
        public const string ConfirmDeleteProductMessage = "Потвърждавате ли изтриването на проудкт?";
        public const string ProductDeletedSuccessfullyMessage = "Продуктът е изтрит успешно";
        public const string ConfirmEditProductMessage = "Потвърждавате ли редактирането на продукт?";
        public const string ProductEditedSuccessfullyMessage = "Продуктът е редактиран успешно";
        public const string ConfirmMealEditMеssage = "Потвърждавате ли редактирането на ястието?";
        public const string MealEditеdSuccessfullyMеssage = "Ястието е редактирано успешно";
        public const string ConfimrDeleteMealMessage = "Потвърждавате ли изтриването на ястие";
        public const string MealDeletedSuccessfullyMessage = "Ястието е изтрито успешно";
        public const string RequiredMealNameMessage = "Моля въведете име на ястие";
        public const string RequiredMealQuantityMessage = "Моля въведете грамаж за ястието";
        public const string RequiredMealTypeMessage = "Моля въведете тип за ястието";
        public const string RequiredMealCaloriesMessage = "Моля въведете калории за ястието";
        public const string RequiredMealPortionsMessage = "Моля въведете порции за ястието";
        public const string ConfirmCreateNewMealMessage = "Потвърждавате ли създаването на ново ястие";
        public const string NewMealCreatedSuccessfullyMessage = "Ястието е добавено успешно";
        public const string MealNameToolTip = "Име на ястието";
        public const string QuantityToolTip = "Грамаж на ястието";
        public const string TypeToolTip = "Тип на ястието";
        public const string CaloriesToolTip = "Калории за ястието";
        public const string PortionsToolTip = "Брой порции за ястието";
        public const string InvalidMealDataFormat =
            "Моля уверете се, че форматът на въведените от Вас данни е правилен";
        public const string ConfirmDeleteRecipeMessage = "Потвърждавате ли изтриването на данните за рецептата?";
        public const string RecipeDeletedSuccessfullyMessage = "Данните за рецептата са изтрити успешно?";
        public const string ConfirmAddProductToRecipeMessage =
            "Потвърждавате ли добавянето на продукта към рецептата?";
        public const string ProductDeletedFromRecipeSuccessfullyMessage =
            "Продуктът е премахнат успешно от рецептата";
        public const string InvalidRecipeProductDataMessage =
            "Данните за продукта са невалидни. Моля опитайте отново!";
        public const string ConfirmDeleteRecipeProductMesssage =
            "Потвърждавате ли изтриването на продукта от рецептата";
        public const string RecipeProductDeletedSuccessfullyMessage =
            "Продуктът е премахнат успешно от рецептата";
        public const string RecipeProductEditedSuccessfullyMessage =
            "Продуктът е редактиран успешно";
        public const string InvalidRecipeProductQuantityMessage =
            "Невалиден формат за количество на продукта. Моля опитайте отново!";
        public const string ConfirmInsertNewRecipeMessage = "Потвърждавате ли добяването на нова рецепта?";
        public const string RecipeInsertedSuccessfullyMessage = "Рецептата е добавена успешно";
        public const string InvalidRecipeProductData = "Данните за количество не са в коректен формат. Моля въведете отново!";
        public const string RequiredRecipeProductQuantityMessage = "Моля въведете количество за продукт";
        public const string ProductToolTip = "Продукт";
        public const string RecipeToolTip = "Ястие";
        public const string RecipeProductQuantityToolTip = "Количество";
        // New menu constantts
            // Tool tips
        public const string FirstMealToolTip = "Предястие";
        public const string FirstMealCountToolTip = "Предястие - брой";
        public const string SecondMealToolTip = "Основно ястие";
        public const string SecondMealCountToolTip = "Основно ястие - брой";
        public const string ThirdMealToolTip = "Десерт";
        public const string ThirdMealCountToolTip = "Десерт - брой";
            // Required data messages
        public const string RequiredFirstMealCountMessage = "Моля въведете количество за предястие";
        public const string RequiredSecondMealCountMessage = "Моля въведете количество за основно ястие";
        public const string RequiredThirdMealCountMessage = "Моля въведете количество за десерт";
            // Confirm message
        public const string ConfirmCreateNewMenuMessage = "Потвържадавате ли създането на меню?";
            // Menu created succesfully
        public const string MenuCreatedSuccessfullyMessage = "Менюто е създадено успешно";
            // Invaled menu data
        public const string InvalidMenuDateMessage =
            "Форматът на данните за менюто е некоректен. Моля въведете данните отново!";
    }
}
