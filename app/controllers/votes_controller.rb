class VotesController < InheritedResources::Base

  def new
    if cookies[:voted_ideas].split(',').include?(params[:idea_id])
      respond_to do |format|
        format.html { redirect_to ideas_url, alert: 'You have already voted.' }
      end
    else
      @idea = find_idea
      @vote = @idea.votes.new
    end
  end

  def index
    @votes = find_idea.votes
  end

  def show
    @vote = find_vote
  end

  def edit
    @vote = find_vote
  end

  def update
    @vote = find_vote

    if @vote.update(vote_params)
      redirect_to(@vote)
    else
      render('edit')
    end
  end

  def create
    @vote = Vote.new(vote_params)

    respond_to do |format|
      if @vote.save
        puts cookies[:voted_ideas]
        if cookies[:voted_ideas].nil?
          cookies[:voted_ideas] = @vote.idea.id
        else
          cookies[:voted_ideas] = cookies[:voted_ideas] + "," + @vote.idea.id.to_s
        end
        out = 'Hlasovali jste pro návrh.'
        out = 'Hlasovali jste proti návrhu.' unless @vote.state
        format.html { redirect_to ideas_url, notice: out }
      else
        format.html { render :new }
      end
    end
  end

  private

  def find_vote
    @vote = find_idea.votes.find(params[:id])
  end

  def find_idea
    @idea = Idea.find(params[:idea_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def vote_params
    params.require(:vote).permit(:idea_id, :state)
  end

end

