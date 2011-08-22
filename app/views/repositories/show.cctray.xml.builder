xml.Projects do
  xml.Project(
    :name            => @repository.name,
    :activity        => cctray_build_activity(@repository.last_build),
    :lastBuildStatus => cctray_build_status(@repository.last_build_status),
    :lastBuildLabel  => @repository.last_build_number,
    :lastBuildTime   => @repository.last_build_finished_at,
    :webUrl          => @repository.url
  )
end
