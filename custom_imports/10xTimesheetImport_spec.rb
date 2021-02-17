# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe '10xTimesheetImport' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it '10xTimesheetImport' do
    @driver.get('http://ec2-52-87-156-42.compute-1.amazonaws.com:3000/')
    @driver.find_element(:css, '.icon-reorder').click
    @driver.find_element(:link_text, 'Administration').click
    @driver.find_element(:css, '.imports > li:nth-child(3) .dashboard-item-label').click
    @driver.find_element(:xpath, '//a[contains(@href, \'/easy_entity_imports/19\')]').click
    @driver.find_element(:name, 'attachments[dummy][file]').click
    @driver.find_element(:name, 'attachments[dummy][file]').send_keys('/home/dayalan/Downloads/PSA 10.x imports - TimeSheet .csv')
    @driver.find_element(:name, 'button').click
    @driver.find_element(:css, '.icon-magnifier:nth-child(1)').click
    element = @driver.find_element(:css, '.import-button')
    @driver.action.move_to_element(element).perform
    dropdown = @driver.find_element(:id, 'easy_entity_import_merge_by')
    dropdown.find_element(:xpath, "//option[. = 'ID']").click
    dragged = @driver.find_element(:css, 'big[data-name=user]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_user_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=\'start date\']')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_start_date_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=\'end date\']')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_end_date_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    dragged = @driver.find_element(:css, 'big[data-name=ID]')
    dropped = @driver.find_element(:css, 'input[id=easy_entity_import_attribute_id_value]')
    @driver.action.drag_and_drop(dragged, dropped).perform
    @driver.find_element(:css, '.icon-import').click
  end
end
