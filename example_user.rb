class User
	#创建访问器属性
	attr_accessor :name, :email

	#实例变量总是以@符号开头，未定义则其值为nil
	#initialize在Ruby中有特殊含义，当执行User.new时会被调用,
	#可以接受一个参数，attributes，初始值是一个空的Hash
	def initialize(attributes = {})
		@name = attributes[:name]
		@email = attributes[:email]
	end

	def formatted_email
		"#{@name} <#{@email}>"
	end
end