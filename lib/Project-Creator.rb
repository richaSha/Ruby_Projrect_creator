class ProjectCreator
  attr_reader(:name)
  def initialize (name)
    @name = name
    @current_path = FileUtils.pwd()
    FileUtils.cd("#{Dir.home}/Desktop")
    create_project()
  end
  def create_project
    FileUtils.mkdir @name
    FileUtils.cd @name
    FileUtils.mkdir 'lib'
    FileUtils.mkdir 'spec'
    FileUtils.touch 'lib/'+@name+'.rb'
    FileUtils.touch 'spec/'+@name+'_spec.rb'
    FileUtils.touch 'Gemfile'
    FileUtils.touch 'README.md'
    FileUtils.copy_file(@current_path+"/README.md", "README.md")
    FileUtils.copy_file(@current_path+"/Gemfile", "Gemfile")
  end
end
