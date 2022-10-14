user_1 = User.create(name: 'Victoria')

category_1 = Category.create(name: 'Cat 1', icon: 'Icon cat 1', user: user_1)

exp_1 = Expenditure.create(name: 'Expenditure 1', amount: 300, author_id: user_1.id, category_id: category_1.id)
