require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { age: @character.age, bio: @character.bio, birth_date: @character.birth_date, birth_location: @character.birth_location, death_date: @character.death_date, faction_id: @character.faction_id, gender_id: @character.gender_id, name: @character.name, race_id: @character.race_id } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { age: @character.age, bio: @character.bio, birth_date: @character.birth_date, birth_location: @character.birth_location, death_date: @character.death_date, faction_id: @character.faction_id, gender_id: @character.gender_id, name: @character.name, race_id: @character.race_id } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
