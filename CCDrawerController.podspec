Pod::Spec.new do |s|
  s.name = 'CCDrawerController'
  s.version = '4.1.8'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage = 'https://github.com/Chris-Corea/DrawerController'
  s.authors = { 'Sascha Schwabbauer' => 'sascha@evolved.io',
  				'Malte Baumann' => 'malte@codingdivision.com', 
          'Cuong Ta' => 'cuong@mistsys.com',
          'Chris Corea' => ''}
  s.summary = 'A lightweight, easy-to-use side drawer navigation controller (Swift port of MMDrawerController).'
  s.source = { :git => 'https://github.com/Chris-Corea/DrawerController.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.ios.deployment_target = '9.0'

  s.subspec 'Core' do |ss|
    ss.source_files = 'DrawerController/DrawerController.swift', 'DrawerController/DrawerSegue.swift'
    ss.framework  = 'QuartzCore'
  end

  s.subspec 'DrawerVisualStates' do |ss|
  	ss.source_files = 'DrawerController/DrawerBarButtonItem.swift', 'DrawerController/AnimatedMenuButton.swift', 'DrawerController/DrawerVisualState.swift'
  	ss.dependency 'DrawerController/Core'
  end
end
