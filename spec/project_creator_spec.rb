require('Project-Creator')
require('rspec')
require('pry')

describe("#Project-Creator") do
  it("return created file path") do
    name = "project"
    project = ProjectCreator.new(name)
    FileUtils.cd("#{Dir.home}/Desktop/project")
    expect(FileUtils.pwd()).to(eq("/Users/Guest/Desktop/"+name))
  end
end
