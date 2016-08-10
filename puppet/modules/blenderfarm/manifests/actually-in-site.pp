node default {
  include blenderfarm
}


node 'jabba-masta-00.knoxschools.ad' {
  include blenderfarm
  include blenderfarm::dashboard
  
}
