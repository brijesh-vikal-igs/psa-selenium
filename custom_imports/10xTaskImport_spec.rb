# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe '10xTaskImport' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it '10xTaskImport' do
    @driver.get('http://ec2-52-87-156-42.compute-1.amazonaws.com:3000/')
    @driver.find_element(:css, '.icon-reorder').click
    @driver.find_element(:link_text, 'Administration').click
    @driver.find_element(:css, '.imports > li:nth-child(3) .dashboard-item-label').click
    @driver.find_element(:xpath, '//a[contains(@href, \'/easy_entity_imports/24\')]').click
    @driver.find_element(:name, 'attachments[dummy][file]').click
    @driver.find_element(:name, 'attachments[dummy][file]').send_keys('/home/dayalan/Downloads/PSA 10.x imports - Tasks (3).csv')
    @driver.find_element(:name, 'button').click
    @driver.find_element(:css, '.icon-magnifier:nth-child(1)').click
    dropdown = @driver.find_element(:id, 'easy_entity_import_merge_by')
    dropdown.find_element(:xpath, "//option[. = 'ID']").click
    dragged = @driver.find_element(:css, 'big[data-name=ID]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_easy_external_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=ID]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=project_id]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_project_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=\'Tracker ID\']')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_tracker_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=AuthorID]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_assigned_to_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=name]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_subject_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=calculated_starts]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_start_date_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=calculated_finishes]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_due_date_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=parentid]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_parent_issue_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=AuthorID]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_author_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=estimated_hours]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_estimated_hours_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=\'Task Type Name\']')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_cf_17_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=ID]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    @driver.find_element(:css, '.icon-import').click
  end
end
