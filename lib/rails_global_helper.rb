module RailsGlobalHelper
  def self.delete_all_data_records 
    Friend.destroy_all
    NailService.destroy_all
    NailEmployee.destroy_all
    NailServiceTemplate.destroy_all
    ServiceCategory.destroy_all
  end
end
