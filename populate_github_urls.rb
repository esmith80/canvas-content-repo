require 'yaml'

def clean_path(path)
    path = path.sub(/\n/,'')
    path = URI.escape(path)
    # URI.escape doesn't remove single quotes or question marks, if single quote, shell won't run command properly
    path = path.gsub(/'/, '%27')
    # if question mark, url can't be read properly
    path = path.gsub(/\?/, '%3F')
end

def lesson_title(path)
    path_parts = path.split('/')
    path_parts = path_parts[-1].split('__')
    # this string is run by a shell, so it should use escaped characters (`\ ` for space, etc.)
    name = path_parts[-2].gsub('%20', ' ')
    name = name.gsub(/%3F/, '?')
    # HACKY - turn 's in to "is a" having a single quote in the cmd is causing grief (isn't there a better way?)
    name = name.gsub(/%27s/, ' is')
    activity_type = path_parts[-1].sub('.md','')
    name + ' - ' + activity_type
end


github_urls_file = "github_filenamesJuly3.txt"
github_data = []

File.open(github_urls_file.to_s, 'r') do |f|
  f.each_line do |path|  
    path = clean_path(path)
    title = lesson_title(path)
    github_data << { "path" => path, "title" => title }
  end
end

course = YAML.load_file('course_structure.yml')

course[:modules].each do |mod|
    mod[:lessons].each do |lesson|
        github_data.each do |d|
          if lesson["title"] === d["title"]
            lesson["repository"] = d["path"]
            File.open("course_structure.yml", 'w') { |f| YAML.dump(course, f) }
          end
        end
    end
end
