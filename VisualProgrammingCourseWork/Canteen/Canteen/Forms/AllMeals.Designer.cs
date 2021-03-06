﻿namespace Canteen.Forms
{
    partial class AllMeals
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(AllMeals));
            this.contentWrapper = new System.Windows.Forms.Panel();
            this.editButton = new System.Windows.Forms.Button();
            this.deleteButton = new System.Windows.Forms.Button();
            this.ястияDataGridView = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.mealsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.canteenDataSet = new Canteen.CanteenDataSet();
            this.mealCode = new System.Windows.Forms.TextBox();
            this.mealName = new System.Windows.Forms.TextBox();
            this.quantity = new System.Windows.Forms.TextBox();
            this.calories = new System.Windows.Forms.TextBox();
            this.type = new System.Windows.Forms.TextBox();
            this.portions = new System.Windows.Forms.TextBox();
            this.modificationDate = new System.Windows.Forms.DateTimePicker();
            this.mealsTableAdapter = new Canteen.CanteenDataSetTableAdapters.ЯстияTableAdapter();
            this.tableAdapterManager = new Canteen.CanteenDataSetTableAdapters.TableAdapterManager();
            this.mealsBindingNavigator = new System.Windows.Forms.BindingNavigator(this.components);
            this.bindingNavigatorCountItem = new System.Windows.Forms.ToolStripLabel();
            this.bindingNavigatorMoveFirstItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMovePreviousItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorPositionItem = new System.Windows.Forms.ToolStripTextBox();
            this.bindingNavigatorSeparator1 = new System.Windows.Forms.ToolStripSeparator();
            this.bindingNavigatorMoveNextItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorMoveLastItem = new System.Windows.Forms.ToolStripButton();
            this.bindingNavigatorSeparator2 = new System.Windows.Forms.ToolStripSeparator();
            mealCodeLabel = new System.Windows.Forms.Label();
            mealNameLabel = new System.Windows.Forms.Label();
            quantityLabel = new System.Windows.Forms.Label();
            caloriesLabel = new System.Windows.Forms.Label();
            typeLabel = new System.Windows.Forms.Label();
            portionsLabel = new System.Windows.Forms.Label();
            modificationDateLabel = new System.Windows.Forms.Label();
            this.contentWrapper.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ястияDataGridView)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mealsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.canteenDataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.mealsBindingNavigator)).BeginInit();
            this.mealsBindingNavigator.SuspendLayout();
            this.SuspendLayout();
            // 
            // contentWrapper
            // 
            this.contentWrapper.Controls.Add(this.editButton);
            this.contentWrapper.Controls.Add(this.deleteButton);
            this.contentWrapper.Controls.Add(this.ястияDataGridView);
            this.contentWrapper.Controls.Add(mealCodeLabel);
            this.contentWrapper.Controls.Add(this.mealCode);
            this.contentWrapper.Controls.Add(mealNameLabel);
            this.contentWrapper.Controls.Add(this.mealName);
            this.contentWrapper.Controls.Add(quantityLabel);
            this.contentWrapper.Controls.Add(this.quantity);
            this.contentWrapper.Controls.Add(caloriesLabel);
            this.contentWrapper.Controls.Add(this.calories);
            this.contentWrapper.Controls.Add(typeLabel);
            this.contentWrapper.Controls.Add(this.type);
            this.contentWrapper.Controls.Add(portionsLabel);
            this.contentWrapper.Controls.Add(this.portions);
            this.contentWrapper.Controls.Add(modificationDateLabel);
            this.contentWrapper.Controls.Add(this.modificationDate);
            this.contentWrapper.Location = new System.Drawing.Point(25, 25);
            this.contentWrapper.Name = "contentWrapper";
            this.contentWrapper.Size = new System.Drawing.Size(834, 481);
            this.contentWrapper.TabIndex = 0;
            // 
            // editButton
            // 
            this.editButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.editButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.editButton.Location = new System.Drawing.Point(571, 50);
            this.editButton.Name = "editButton";
            this.editButton.Size = new System.Drawing.Size(162, 38);
            this.editButton.TabIndex = 16;
            this.editButton.Text = "Редактиране";
            this.editButton.UseVisualStyleBackColor = true;
            this.editButton.Click += new System.EventHandler(this.editButton_Click);
            // 
            // deleteButton
            // 
            this.deleteButton.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.deleteButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.deleteButton.Location = new System.Drawing.Point(586, 114);
            this.deleteButton.Name = "deleteButton";
            this.deleteButton.Size = new System.Drawing.Size(134, 38);
            this.deleteButton.TabIndex = 15;
            this.deleteButton.Text = "Изтриване";
            this.deleteButton.UseVisualStyleBackColor = true;
            this.deleteButton.Click += new System.EventHandler(this.deleteButton_Click);
            // 
            // ястияDataGridView
            // 
            this.ястияDataGridView.AutoGenerateColumns = false;
            this.ястияDataGridView.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.ястияDataGridView.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ястияDataGridView.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5,
            this.dataGridViewTextBoxColumn6,
            this.dataGridViewTextBoxColumn7});
            this.ястияDataGridView.DataSource = this.mealsBindingSource;
            this.ястияDataGridView.Location = new System.Drawing.Point(14, 230);
            this.ястияDataGridView.Name = "ястияDataGridView";
            this.ястияDataGridView.ReadOnly = true;
            this.ястияDataGridView.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.ястияDataGridView.Size = new System.Drawing.Size(777, 220);
            this.ястияDataGridView.TabIndex = 14;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "Код";
            this.dataGridViewTextBoxColumn1.HeaderText = "Код";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "Наименование";
            this.dataGridViewTextBoxColumn2.HeaderText = "Наименование";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "Грамаж";
            this.dataGridViewTextBoxColumn3.HeaderText = "Грамаж";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "Калории";
            this.dataGridViewTextBoxColumn4.HeaderText = "Калории";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            this.dataGridViewTextBoxColumn4.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "Тип";
            this.dataGridViewTextBoxColumn5.HeaderText = "Тип";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            this.dataGridViewTextBoxColumn5.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "Порции";
            this.dataGridViewTextBoxColumn6.HeaderText = "Порции";
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            this.dataGridViewTextBoxColumn6.ReadOnly = true;
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.DataPropertyName = "ДатаНаМодификация";
            this.dataGridViewTextBoxColumn7.HeaderText = "ДатаНаМодификация";
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            this.dataGridViewTextBoxColumn7.ReadOnly = true;
            // 
            // mealsBindingSource
            // 
            this.mealsBindingSource.DataMember = "Ястия";
            this.mealsBindingSource.DataSource = this.canteenDataSet;
            // 
            // canteenDataSet
            // 
            this.canteenDataSet.DataSetName = "CanteenDataSet";
            this.canteenDataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // mealCodeLabel
            // 
            mealCodeLabel.AutoSize = true;
            mealCodeLabel.Font = new System.Drawing.Font("Georgia", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            mealCodeLabel.Location = new System.Drawing.Point(21, 31);
            mealCodeLabel.Name = "mealCodeLabel";
            mealCodeLabel.Size = new System.Drawing.Size(57, 25);
            mealCodeLabel.TabIndex = 0;
            mealCodeLabel.Text = "Код:";
            // 
            // mealCode
            // 
            this.mealCode.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.mealsBindingSource, "Код", true));
            this.mealCode.Location = new System.Drawing.Point(289, 31);
            this.mealCode.Name = "mealCode";
            this.mealCode.ReadOnly = true;
            this.mealCode.Size = new System.Drawing.Size(200, 20);
            this.mealCode.TabIndex = 1;
            // 
            // mealNameLabel
            // 
            mealNameLabel.AutoSize = true;
            mealNameLabel.Font = new System.Drawing.Font("Georgia", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            mealNameLabel.Location = new System.Drawing.Point(21, 57);
            mealNameLabel.Name = "mealNameLabel";
            mealNameLabel.Size = new System.Drawing.Size(167, 25);
            mealNameLabel.TabIndex = 2;
            mealNameLabel.Text = "Наименование:";
            // 
            // mealName
            // 
            this.mealName.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.mealsBindingSource, "Наименование", true));
            this.mealName.Location = new System.Drawing.Point(289, 57);
            this.mealName.Name = "mealName";
            this.mealName.Size = new System.Drawing.Size(200, 20);
            this.mealName.TabIndex = 3;
            // 
            // quantityLabel
            // 
            quantityLabel.AutoSize = true;
            quantityLabel.Font = new System.Drawing.Font("Georgia", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            quantityLabel.Location = new System.Drawing.Point(21, 83);
            quantityLabel.Name = "quantityLabel";
            quantityLabel.Size = new System.Drawing.Size(97, 25);
            quantityLabel.TabIndex = 4;
            quantityLabel.Text = "Грамаж:";
            // 
            // quantity
            // 
            this.quantity.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.mealsBindingSource, "Грамаж", true));
            this.quantity.Location = new System.Drawing.Point(289, 83);
            this.quantity.Name = "quantity";
            this.quantity.Size = new System.Drawing.Size(200, 20);
            this.quantity.TabIndex = 5;
            // 
            // caloriesLabel
            // 
            caloriesLabel.AutoSize = true;
            caloriesLabel.Font = new System.Drawing.Font("Georgia", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            caloriesLabel.Location = new System.Drawing.Point(21, 109);
            caloriesLabel.Name = "caloriesLabel";
            caloriesLabel.Size = new System.Drawing.Size(106, 25);
            caloriesLabel.TabIndex = 6;
            caloriesLabel.Text = "Калории:";
            // 
            // calories
            // 
            this.calories.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.mealsBindingSource, "Калории", true));
            this.calories.Location = new System.Drawing.Point(289, 109);
            this.calories.Name = "calories";
            this.calories.Size = new System.Drawing.Size(200, 20);
            this.calories.TabIndex = 7;
            // 
            // typeLabel
            // 
            typeLabel.AutoSize = true;
            typeLabel.Font = new System.Drawing.Font("Georgia", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            typeLabel.Location = new System.Drawing.Point(21, 135);
            typeLabel.Name = "typeLabel";
            typeLabel.Size = new System.Drawing.Size(58, 25);
            typeLabel.TabIndex = 8;
            typeLabel.Text = "Тип:";
            // 
            // type
            // 
            this.type.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.mealsBindingSource, "Тип", true));
            this.type.Location = new System.Drawing.Point(289, 135);
            this.type.Name = "type";
            this.type.Size = new System.Drawing.Size(200, 20);
            this.type.TabIndex = 9;
            // 
            // portionsLabel
            // 
            portionsLabel.AutoSize = true;
            portionsLabel.Font = new System.Drawing.Font("Georgia", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            portionsLabel.Location = new System.Drawing.Point(21, 161);
            portionsLabel.Name = "portionsLabel";
            portionsLabel.Size = new System.Drawing.Size(98, 25);
            portionsLabel.TabIndex = 10;
            portionsLabel.Text = "Порции:";
            // 
            // portions
            // 
            this.portions.DataBindings.Add(new System.Windows.Forms.Binding("Text", this.mealsBindingSource, "Порции", true));
            this.portions.Location = new System.Drawing.Point(289, 161);
            this.portions.Name = "portions";
            this.portions.Size = new System.Drawing.Size(200, 20);
            this.portions.TabIndex = 11;
            // 
            // modificationDateLabel
            // 
            modificationDateLabel.AutoSize = true;
            modificationDateLabel.Font = new System.Drawing.Font("Georgia", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            modificationDateLabel.Location = new System.Drawing.Point(21, 188);
            modificationDateLabel.Name = "modificationDateLabel";
            modificationDateLabel.Size = new System.Drawing.Size(249, 25);
            modificationDateLabel.TabIndex = 12;
            modificationDateLabel.Text = "Дата На Модификация:";
            // 
            // modificationDate
            // 
            this.modificationDate.DataBindings.Add(new System.Windows.Forms.Binding("Value", this.mealsBindingSource, "ДатаНаМодификация", true));
            this.modificationDate.Enabled = false;
            this.modificationDate.Location = new System.Drawing.Point(289, 187);
            this.modificationDate.Name = "modificationDate";
            this.modificationDate.Size = new System.Drawing.Size(200, 20);
            this.modificationDate.TabIndex = 13;
            // 
            // mealsTableAdapter
            // 
            this.mealsTableAdapter.ClearBeforeFill = true;
            // 
            // tableAdapterManager
            // 
            this.tableAdapterManager.BackupDataSetBeforeUpdate = false;
            this.tableAdapterManager.journalTableAdapter = null;
            this.tableAdapterManager.UpdateOrder = Canteen.CanteenDataSetTableAdapters.TableAdapterManager.UpdateOrderOption.InsertUpdateDelete;
            this.tableAdapterManager.МенютаTableAdapter = null;
            this.tableAdapterManager.ПотребителиTableAdapter = null;
            this.tableAdapterManager.ПродуктиTableAdapter = null;
            this.tableAdapterManager.РецептиTableAdapter = null;
            this.tableAdapterManager.ЯстияTableAdapter = this.mealsTableAdapter;
            // 
            // mealsBindingNavigator
            // 
            this.mealsBindingNavigator.AddNewItem = null;
            this.mealsBindingNavigator.BindingSource = this.mealsBindingSource;
            this.mealsBindingNavigator.CountItem = this.bindingNavigatorCountItem;
            this.mealsBindingNavigator.DeleteItem = null;
            this.mealsBindingNavigator.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.bindingNavigatorMoveFirstItem,
            this.bindingNavigatorMovePreviousItem,
            this.bindingNavigatorSeparator,
            this.bindingNavigatorPositionItem,
            this.bindingNavigatorCountItem,
            this.bindingNavigatorSeparator1,
            this.bindingNavigatorMoveNextItem,
            this.bindingNavigatorMoveLastItem,
            this.bindingNavigatorSeparator2});
            this.mealsBindingNavigator.Location = new System.Drawing.Point(0, 0);
            this.mealsBindingNavigator.MoveFirstItem = this.bindingNavigatorMoveFirstItem;
            this.mealsBindingNavigator.MoveLastItem = this.bindingNavigatorMoveLastItem;
            this.mealsBindingNavigator.MoveNextItem = this.bindingNavigatorMoveNextItem;
            this.mealsBindingNavigator.MovePreviousItem = this.bindingNavigatorMovePreviousItem;
            this.mealsBindingNavigator.Name = "mealsBindingNavigator";
            this.mealsBindingNavigator.PositionItem = this.bindingNavigatorPositionItem;
            this.mealsBindingNavigator.Size = new System.Drawing.Size(884, 25);
            this.mealsBindingNavigator.TabIndex = 1;
            this.mealsBindingNavigator.Text = "bindingNavigator1";
            // 
            // bindingNavigatorCountItem
            // 
            this.bindingNavigatorCountItem.Name = "bindingNavigatorCountItem";
            this.bindingNavigatorCountItem.Size = new System.Drawing.Size(35, 22);
            this.bindingNavigatorCountItem.Text = "of {0}";
            this.bindingNavigatorCountItem.ToolTipText = "Total number of items";
            // 
            // bindingNavigatorMoveFirstItem
            // 
            this.bindingNavigatorMoveFirstItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveFirstItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveFirstItem.Image")));
            this.bindingNavigatorMoveFirstItem.Name = "bindingNavigatorMoveFirstItem";
            this.bindingNavigatorMoveFirstItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveFirstItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveFirstItem.Text = "Move first";
            // 
            // bindingNavigatorMovePreviousItem
            // 
            this.bindingNavigatorMovePreviousItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMovePreviousItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMovePreviousItem.Image")));
            this.bindingNavigatorMovePreviousItem.Name = "bindingNavigatorMovePreviousItem";
            this.bindingNavigatorMovePreviousItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMovePreviousItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMovePreviousItem.Text = "Move previous";
            // 
            // bindingNavigatorSeparator
            // 
            this.bindingNavigatorSeparator.Name = "bindingNavigatorSeparator";
            this.bindingNavigatorSeparator.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorPositionItem
            // 
            this.bindingNavigatorPositionItem.AccessibleName = "Position";
            this.bindingNavigatorPositionItem.AutoSize = false;
            this.bindingNavigatorPositionItem.Name = "bindingNavigatorPositionItem";
            this.bindingNavigatorPositionItem.Size = new System.Drawing.Size(50, 23);
            this.bindingNavigatorPositionItem.Text = "0";
            this.bindingNavigatorPositionItem.ToolTipText = "Current position";
            // 
            // bindingNavigatorSeparator1
            // 
            this.bindingNavigatorSeparator1.Name = "bindingNavigatorSeparator1";
            this.bindingNavigatorSeparator1.Size = new System.Drawing.Size(6, 25);
            // 
            // bindingNavigatorMoveNextItem
            // 
            this.bindingNavigatorMoveNextItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveNextItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveNextItem.Image")));
            this.bindingNavigatorMoveNextItem.Name = "bindingNavigatorMoveNextItem";
            this.bindingNavigatorMoveNextItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveNextItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveNextItem.Text = "Move next";
            // 
            // bindingNavigatorMoveLastItem
            // 
            this.bindingNavigatorMoveLastItem.DisplayStyle = System.Windows.Forms.ToolStripItemDisplayStyle.Image;
            this.bindingNavigatorMoveLastItem.Image = ((System.Drawing.Image)(resources.GetObject("bindingNavigatorMoveLastItem.Image")));
            this.bindingNavigatorMoveLastItem.Name = "bindingNavigatorMoveLastItem";
            this.bindingNavigatorMoveLastItem.RightToLeftAutoMirrorImage = true;
            this.bindingNavigatorMoveLastItem.Size = new System.Drawing.Size(23, 22);
            this.bindingNavigatorMoveLastItem.Text = "Move last";
            // 
            // bindingNavigatorSeparator2
            // 
            this.bindingNavigatorSeparator2.Name = "bindingNavigatorSeparator2";
            this.bindingNavigatorSeparator2.Size = new System.Drawing.Size(6, 25);
            // 
            // AllMeals
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(884, 506);
            this.Controls.Add(this.mealsBindingNavigator);
            this.Controls.Add(this.contentWrapper);
            this.Name = "AllMeals";
            this.Text = "AllMeals";
            this.Load += new System.EventHandler(this.AllMeals_Load);
            this.contentWrapper.ResumeLayout(false);
            this.contentWrapper.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ястияDataGridView)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mealsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.canteenDataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.mealsBindingNavigator)).EndInit();
            this.mealsBindingNavigator.ResumeLayout(false);
            this.mealsBindingNavigator.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel contentWrapper;
        private CanteenDataSet canteenDataSet;
        private System.Windows.Forms.BindingSource mealsBindingSource;
        private CanteenDataSetTableAdapters.ЯстияTableAdapter mealsTableAdapter;
        private CanteenDataSetTableAdapters.TableAdapterManager tableAdapterManager;
        private System.Windows.Forms.BindingNavigator mealsBindingNavigator;
        private System.Windows.Forms.ToolStripLabel bindingNavigatorCountItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveFirstItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMovePreviousItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator;
        private System.Windows.Forms.ToolStripTextBox bindingNavigatorPositionItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator1;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveNextItem;
        private System.Windows.Forms.ToolStripButton bindingNavigatorMoveLastItem;
        private System.Windows.Forms.ToolStripSeparator bindingNavigatorSeparator2;
        private System.Windows.Forms.DataGridView ястияDataGridView;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.Label mealCodeLabel;
        private System.Windows.Forms.Label mealNameLabel;
        private System.Windows.Forms.Label quantityLabel;
        private System.Windows.Forms.Label caloriesLabel;
        private System.Windows.Forms.Label modificationDateLabel;
        private System.Windows.Forms.Label typeLabel;
        private System.Windows.Forms.Label portionsLabel;
        private System.Windows.Forms.TextBox mealCode;
        private System.Windows.Forms.TextBox mealName;
        private System.Windows.Forms.TextBox quantity;
        private System.Windows.Forms.TextBox calories;
        private System.Windows.Forms.TextBox type;
        private System.Windows.Forms.TextBox portions;
        private System.Windows.Forms.DateTimePicker modificationDate;
        private System.Windows.Forms.Button editButton;
        private System.Windows.Forms.Button deleteButton;

    }
}