# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

first_user = User.new(name: 'Kayo Pereira', email: 'kayopereira@gmail.com', :password => '1234', :password_confirmation => '1234')
first_user.save

second_user = User.new(name: 'João Carlos', email: 'joao.brufatto@gmail.com', :password => '1234', :password_confirmation => '1234')
second_user.save

third_user = User.new(name: 'Faab Engenharia', email: 'faab@gmail.com', :password => '1234', :password_confirmation => '1234')
third_user.save

fourth_user = User.new(name: 'Teste', email: 'teste@gmail.com', :password => '1234', :password_confirmation => '1234')
fourth_user.save

job1 = Job.new(cnpj: "18236120000158", 
               amount: 5, 
               user_id: second_user.id, 
               name: "Analytics Engineer", 
               content: "In 2020 we decided to change the Chapter's name from Data Analyst to Analytics Engineer. The team unanimously agrees that the name better fits the work we do. Being an Analytics Engineer at Nubank is different than the average Analytics Engineer position. We optimize for long term value by focusing on engineering as opposed to spending our time on recurrent ad hoc jobs. You can watch the following talk to learn more about the Analytics Engineer role at Nubank. From $ 1.000 to $ 2.000")
job1.save!


job2 = Job.new(cnpj: "24215482000165", 
               amount: 1, 
               user_id: fourth_user.id, 
               name: "Assistente Sushiman", 
               content: "Limpeza no local de trabalho, etiquetar os itens com datas de validade, abrir e limpar salmão, preparação de sushis, temakis, arroz, temperos, controle no desperdício de materiais. Experiência na área, pontualidade, honestidade. De R$ 1.001,00 a R$ 2.000,00")
job2.save!

job3 = Job.new(cnpj: "06990590000123", 
               amount: 10, 
               user_id: second_user.id, 
               name: "Enterprise Architect Manager", 
               content: "As part of the Customer Engineering organization in Google Cloud, you will lead a team of Principals Architects, who will build a trusted advisory relationship with strategic accounts and engage with Architects and CxO, to identify customer strategic priorities and deliver business value propositions. Principal Architects lead cross-functional teams of experts to help customers design, plan, implement, and govern enterprise cloud strategies. From $ 5.000 to $ 7.000")
job3.save!

job4 = Job.new(cnpj: "11512944000164", 
               amount: 1, 
               user_id: third_user.id, 
               name: "Estágio em Engenharia", 
               content: "Teste")
job4.save!